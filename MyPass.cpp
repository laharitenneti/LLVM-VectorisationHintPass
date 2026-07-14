#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/MDBuilder.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Metadata.h"

using namespace llvm;

namespace {
  struct MyPass : public PassInfoMixin<MyPass> {
    PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
      //printing the fxn name
      outs() << "Visiting function: " << F.getName() << "\n";

      //using LoopInfo (LLVM's native tool) to detect loops
      LoopInfo &LI = FAM.getResult<LoopAnalysis>(F);

       //iterating to find top-level loops in the function
      for (Loop *L : LI) {
        outs() << "Found a loop with header: " << L->getHeader()->getName() << "\n";

        //Identifying the latch block
        BasicBlock *Latch = L->getLoopLatch();
        if (!Latch) {
          outs() << "No single latch found; skipping.\n";
          continue;
        }

        //Fetching the branch instruction at the end of the latch
        BranchInst *BI = dyn_cast<BranchInst>(Latch->getTerminator());
        if (!BI) {
          outs() << "Latch terminator is not a branch; skipping.\n";
          continue;
        }

        //Fetch the context
        LLVMContext &Ctx = F.getContext();

        //Building the vectorise hint
        MDString *HintName = MDString::get(Ctx, "llvm.loop.vectorize.enable");
        ConstantInt *TrueVal = ConstantInt::get(Type::getInt1Ty(Ctx), 1);
        ValueAsMetadata *TrueMD = ValueAsMetadata::get(TrueVal);
        MDNode *VectorizeHint = MDNode::get(Ctx, {HintName, TrueMD});

        //Check existing metadata
        MDNode *ExistingMD = BI->getMetadata("llvm.loop");

        //Copy it into an empty list
        SmallVector<Metadata *, 4> MDs;
        if (ExistingMD) {
          for (unsigned i = 1; i < ExistingMD->getNumOperands(); i++) { //we ignore the self-referencing node and just add 'mustprogress'
            MDs.push_back(ExistingMD->getOperand(i));
          }
        }
        MDs.push_back(VectorizeHint);

        //Create the actual metadata node
        MDNode *TempLoopID = MDNode::getTemporary(Ctx, {}).release();
        SmallVector<Metadata *, 4> AllOps;
        AllOps.push_back(TempLoopID);
        AllOps.append(MDs.begin(), MDs.end());
        MDNode *LoopID = MDNode::get(Ctx, AllOps);
        TempLoopID->replaceAllUsesWith(LoopID);
        MDNode::deleteTemporary(TempLoopID);

        //Attach the metadata node to the loop.
        BI->setMetadata("llvm.loop", LoopID);
      }

      // //----- Metadata testing; Constructing an MDNode -----
      // LLVMContext &Ctx = F.getContext();

      // //Hint operands
      // MDString *HintName = MDString::get(Ctx, "llvm.loop.vectorize.enable");
      // ConstantInt *TrueVal = ConstantInt::get(Type::getInt1Ty(Ctx), 1);
      // ValueAsMetadata *TrueMD = ValueAsMetadata::get(TrueVal);

      // //Building the hint
      // MDNode *VectorizeHint = MDNode::get(Ctx, {HintName, TrueMD});

      // //Temporary node for self-referencing
      // MDNode *TempLoopID = MDNode::getTemporary(Ctx, {}).release();
      // MDNode *LoopID = MDNode::get(Ctx, {TempLoopID, VectorizeHint});
      // TempLoopID->replaceAllUsesWith(LoopID);
      // MDNode::deleteTemporary(TempLoopID);

      // //print
      // outs() << "Constructed LoopID node: ";
      // LoopID->print(outs());
      // outs() << "\n";
      // outs() << " Hint Node: ";
      // VectorizeHint->print(outs());
      // outs() << "\n";
      // // ----- Metadata testing ends. -----

      return PreservedAnalyses::none();
    }
  };
}

//registering the pass so 'opt' can find it by name
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
  return {
    LLVM_PLUGIN_API_VERSION, "MyPass", LLVM_VERSION_STRING, [](PassBuilder &PB) {
      PB.registerPipelineParsingCallback([](StringRef Name, FunctionPassManager &FPM, ArrayRef<PassBuilder::PipelineElement>) {
        if (Name == "my-pass") {
          FPM.addPass(MyPass());
          return true;
        }
        return false;
      });
    }
  };
}
