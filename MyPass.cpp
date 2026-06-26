#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopInfo.h"

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
