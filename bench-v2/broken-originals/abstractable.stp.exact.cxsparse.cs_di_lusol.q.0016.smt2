(set-logic QF_ABVFP)
(set-info :smt-lib-version 2.0)
(set-info :status unknown)
(declare-fun |__klee_fp_bits_6| () (_ BitVec 64))
(declare-fun |a3_1| () (Array (_ BitVec 32) (_ BitVec 8) ))
(declare-fun |a1_x_0| () (Array (_ BitVec 32) (_ BitVec 8) ))
(assert (let ((|?let_k_0| ((_ to_fp 11 53) (concat (select |a1_x_0|  #x00000007) (concat (select |a1_x_0|  #x00000006) (concat (select |a1_x_0|  #x00000005) (concat (select |a1_x_0|  #x00000004) (concat (select |a1_x_0|  #x00000003) (concat (select |a1_x_0|  #x00000002) (concat (select |a1_x_0|  #x00000001) (select |a1_x_0|  #x00000000))))))))) )) 
(let ((|?let_k_1| (fp.mul RNE (fp.abs |?let_k_0|) ((_ to_fp 11 53) (concat (select |a3_1|  #x00000007) (concat (select |a3_1|  #x00000006) (concat (select |a3_1|  #x00000005) (concat (select |a3_1|  #x00000004) (concat (select |a3_1|  #x00000003) (concat (select |a3_1|  #x00000002) (concat (select |a3_1|  #x00000001) (select |a3_1|  #x00000000)))))))))))) 
(let ((|?let_k_2| (fp.abs |?let_k_0|))) 
(let ((|?let_k_3| (fp.isNaN |?let_k_0|))) 
(let ((|?let_k_4| ((_ to_fp 11 53) (concat (select |a1_x_0|  #x00000017) (concat (select |a1_x_0|  #x00000016) (concat (select |a1_x_0|  #x00000015) (concat (select |a1_x_0|  #x00000014) (concat (select |a1_x_0|  #x00000013) (concat (select |a1_x_0|  #x00000012) (concat (select |a1_x_0|  #x00000011) (select |a1_x_0|  #x00000010)))))))))))
(and (= (fp.div RNE |?let_k_4| |?let_k_0|) ((_ to_fp 11 53) |__klee_fp_bits_6|)) (and (not (fp.isNaN (fp.fma RNE ((_ to_fp 11 53) (concat (select |a1_x_0|  #x00000027) (concat (select |a1_x_0|  #x00000026) (concat (select |a1_x_0|  #x00000025) (concat (select |a1_x_0|  #x00000024) (concat (select |a1_x_0|  #x00000023) (concat (select |a1_x_0|  #x00000022) (concat (select |a1_x_0|  #x00000021) (select |a1_x_0|  #x00000020))))))))) ((_ to_fp 11 53) (bvxor  #x8000000000000000 |__klee_fp_bits_6|)) ((_ to_fp 11 53) (concat (select |a1_x_0|  #x00000037) (concat (select |a1_x_0|  #x00000036) (concat (select |a1_x_0|  #x00000035) (concat (select |a1_x_0|  #x00000034) (concat (select |a1_x_0|  #x00000033) (concat (select |a1_x_0|  #x00000032) (concat (select |a1_x_0|  #x00000031) (select |a1_x_0|  #x00000030)))))))))))) (and (or (or |?let_k_3| (fp.isNaN |?let_k_1|)) (fp.gt |?let_k_1| |?let_k_2|)) (and (not (fp.isZero |?let_k_0|)) (and (not |?let_k_3|) (and (fp.isNaN ((_ to_fp 11 53) (concat (select |a1_x_0|  #x0000001F) (concat (select |a1_x_0|  #x0000001E) (concat (select |a1_x_0|  #x0000001D) (concat (select |a1_x_0|  #x0000001C) (concat (select |a1_x_0|  #x0000001B) (concat (select |a1_x_0|  #x0000001A) (concat (select |a1_x_0|  #x00000019) (select |a1_x_0|  #x00000018)))))))))) (fp.isNaN |?let_k_4|))))))))))) )  
)


klee: /mnt/baranem/klee-float/3.2/lib/Solver/CexCachingSolver.cpp:278: virtual bool CexCachingSolver::computeValidity(const klee::Query&, klee::Solver::Validity&): Assertion `a && "computeValidity() must have assignment"' failed.
 #0 0x00007f94825c03a8 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) (/mnt/baranem/llvm16/install/lib/libLLVM-16.so+0x8103a8)
 #1 0x00007f94825bd987 SignalHandler(int) Signals.cpp:0:0
 #2 0x00007f9481443190 __restore_rt (/lib64/libc.so.6+0x43190)
 #3 0x00007f948149fef4 __pthread_kill_implementation (/lib64/libc.so.6+0x9fef4)
 #4 0x00007f9481443046 gsignal (/lib64/libc.so.6+0x43046)
 #5 0x00007f948142952d abort (/lib64/libc.so.6+0x2952d)
 #6 0x00007f948142a571 _IO_peekc_locked.cold (/lib64/libc.so.6+0x2a571)
 #7 0x00007f948143aad5 __assert_fail (/lib64/libc.so.6+0x3aad5)
 #8 0x000055cd2890c5a2 decltype(auto) llvm::cast<klee::ConstantExpr, klee::ref<klee::Expr>>(klee::ref<klee::Expr>&) /mnt/baranem/llvm16/install/include/llvm/Support/Casting.h:573:3
 #9 0x000055cd2890c5a2 decltype(auto) llvm::cast<klee::ConstantExpr, klee::ref<klee::Expr>>(klee::ref<klee::Expr>&) /mnt/baranem/llvm16/install/include/llvm/Support/Casting.h:572:37
#10 0x000055cd2890c5a2 CexCachingSolver::computeValidity(klee::Query const&, klee::Solver::Validity&) (.cold) /mnt/baranem/klee-float/3.2/lib/Solver/CexCachingSolver.cpp:283:36
#11 0x000055cd289ddb3d CachingSolver::computeValidity(klee::Query const&, klee::Solver::Validity&) /mnt/baranem/klee-float/3.2/lib/Solver/CachingSolver.cpp:195:3
#12 0x000055cd289ca789 IndependentSolver::computeValidity(klee::Query const&, klee::Solver::Validity&) /mnt/baranem/klee-float/3.2/lib/Solver/IndependentSolver.cpp:411:39
#13 0x000055cd2899db79 klee::TimingSolver::evaluate(klee::ConstraintSet const&, klee::ref<klee::Expr>, klee::Solver::Validity&, klee::SolverQueryMetaData&) /mnt/baranem/klee-float/3.2/lib/Core/TimingSolver.cpp:42:34
#14 0x000055cd28959f75 klee::Executor::fork(klee::ExecutionState&, klee::ref<klee::Expr>, bool, BranchType) /mnt/baranem/klee-float/3.2/lib/Core/Executor.cpp:1070:34
#15 0x000055cd2896602f klee::ref<klee::Expr>::~ref() /mnt/baranem/klee-float/3.2/include/klee/ADT/Ref.h:88:17
#16 0x000055cd2896602f klee::Executor::executeInstruction(klee::ExecutionState&, klee::KInstruction*) /mnt/baranem/klee-float/3.2/lib/Core/Executor.cpp:2243:42
#17 0x000055cd2896af61 klee::Executor::run(klee::ExecutionState&) /mnt/baranem/klee-float/3.2/lib/Core/Executor.cpp:3639:18
#18 0x000055cd2896ba10 std::__uniq_ptr_impl<klee::ExecutionTree, std::default_delete<klee::ExecutionTree>>::reset(klee::ExecutionTree*) /usr/include/c++/15/bits/unique_ptr.h:201:16
#19 0x000055cd2896ba10 std::unique_ptr<klee::ExecutionTree, std::default_delete<klee::ExecutionTree>>::reset(klee::ExecutionTree*) /usr/include/c++/15/bits/unique_ptr.h:511:12
#20 0x000055cd2896ba10 std::unique_ptr<klee::ExecutionTree, std::default_delete<klee::ExecutionTree>>::operator=(std::nullptr_t) /usr/include/c++/15/bits/unique_ptr.h:436:7
#21 0x000055cd2896ba10 klee::Executor::runFunctionAsMain(llvm::Function*, int, char**, char**) /mnt/baranem/klee-float/3.2/lib/Core/Executor.cpp:4733:19
#22 0x000055cd2891a206 main /mnt/baranem/klee-float/3.2/tools/klee/main.cpp:1692:5
#23 0x00007f948142b4fe __libc_start_call_main (/lib64/libc.so.6+0x2b4fe)
#24 0x00007f948142b62b __libc_start_main@GLIBC_2.2.5 (/lib64/libc.so.6+0x2b62b)
#25 0x000055cd2892e5c5 _start /home/abuild/rpmbuild/BUILD/glibc-2.43-build/glibc-2.43/csu/../sysdeps/x86_64/start.S:117:0
timeout: the monitored command dumped core
(check-sat)
(exit)
