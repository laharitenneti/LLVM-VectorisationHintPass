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
      }

      //----- Metadata testing; Constructing an MDNode -----
      LLVMContext &Ctx = F.getContext();

      //Hint operands
      MDString *HintName = MDString::get(Ctx, "llvm.loop.vectorize.enable");
      ConstantInt *TrueVal = ConstantInt::get(Type::getInt1Ty(Ctx), 1);
      ValueAsMetadata *TrueMD = ValueAsMetadata::get(TrueVal);

      //Building the hint
      MDNode *VectorizeHint = MDNode::get(Ctx, {HintName, TrueMD});

      //Temporary node for self-referencing
      MDNode *TempLoopID = MDNode::getTemporary(Ctx, {}).release();
      MDNode *LoopID = MDNode::get(Ctx, {TempLoopID, VectorizeHint});
      TempLoopID->replaceAllUsesWith(LoopID);
      MDNode::deleteTemporary(TempLoopID);

      //print
      outs() << "Constructed LoopID node: ";
      LoopID->print(outs());
      outs() << "\n";
      outs() << " Hint Node: ";
      VectorizeHint->print(outs());
      outs() << "\n";
      // ----- Metadata testing ends. -----



      return PreservedAnalyses::all();
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
