(set-logic QF_ABVFP)
(set-info :smt-lib-version 2.0)
(set-info :status unknown)
(declare-fun |__klee_fp_bits_34| () (_ BitVec 16))
(declare-fun |__klee_fp_bits_32| () (_ BitVec 16))
(declare-fun |__klee_fp_bits_31| () (_ BitVec 16))
(declare-fun |a4_1| () (Array (_ BitVec 32) (_ BitVec 8) ))
(declare-fun |__klee_fp_bits_33| () (_ BitVec 16))
(declare-fun |a3_0| () (Array (_ BitVec 32) (_ BitVec 8) ))
(assert (let ((|?let_k_0| (fp.div RNE ((_ to_fp 5 11) (concat (select |a4_1|  #x00000001) (select |a4_1|  #x00000000))) (fp #b0 #b11101 #b0000000000)) )) 
(let ((|?let_k_1| (fp.mul RNE ((_ to_fp 5 11) (concat (select |a3_0|  #x00000001) (select |a3_0|  #x00000000))) (fp #b0 #b00001 #b0000000000)))) 
(let ((|?let_k_2| ((_ to_fp 5 11) (concat (select |a4_1|  #x00000001) (select |a4_1|  #x00000000))))) 
(let ((|?let_k_3| (fp.geq |?let_k_0| (fp #b0 #b00000 #b0000000000)))) 
(let ((|?let_k_4| ((_ to_fp 5 11) (concat (select |a3_0|  #x00000001) (select |a3_0|  #x00000000))))) 
(let ((|?let_k_5| (concat (select |a3_0|  #x00000001) (select |a3_0|  #x00000000)))) 
(let ((|?let_k_6| (fp.geq |?let_k_1| (fp #b0 #b00000 #b0000000000)))) 
(let ((|?let_k_7| (concat (select |a4_1|  #x00000001) (select |a4_1|  #x00000000))))
(and (= |?let_k_0| ((_ to_fp 5 11) |__klee_fp_bits_34|)) (and (= |?let_k_1| ((_ to_fp 5 11) |__klee_fp_bits_33|)) (and (= |?let_k_0| ((_ to_fp 5 11) |__klee_fp_bits_32|)) (and (= |?let_k_1| ((_ to_fp 5 11) |__klee_fp_bits_31|)) (and (not (fp.eq |?let_k_2| |?let_k_0|)) (and (not (fp.isNaN |?let_k_2|)) (and (not (fp.isZero |?let_k_0|)) (and (fp.gt ((_ to_fp 5 11) (ite |?let_k_6| |__klee_fp_bits_33| (bvxor  #x8000 |__klee_fp_bits_33|))) ((_ to_fp 5 11) (ite |?let_k_3| |__klee_fp_bits_34| (bvxor  #x8000 |__klee_fp_bits_34|)))) (and (fp.gt ((_ to_fp 5 11) (ite |?let_k_3| |__klee_fp_bits_32| (bvxor  #x8000 |__klee_fp_bits_32|))) ((_ to_fp 5 11) (ite (fp.geq |?let_k_4| (fp #b0 #b00000 #b0000000000)) |?let_k_5| (bvxor  #x8000 |?let_k_5|)))) (and (not (and (fp.gt ((_ to_fp 5 11) (ite |?let_k_6| |__klee_fp_bits_31| (bvxor  #x8000 |__klee_fp_bits_31|))) ((_ to_fp 5 11) (ite (fp.geq |?let_k_2| (fp #b0 #b00000 #b0000000000)) |?let_k_7| (bvxor  #x8000 |?let_k_7|)))) (not (fp.isZero |?let_k_2|)))) (and (not (fp.eq |?let_k_4| |?let_k_1|)) (and (not (fp.isZero |?let_k_4|)) (not (fp.isNaN |?let_k_4|))))))))))))))))))))) )  
)


klee: /mnt/baranem/klee-float/3.2/lib/Solver/CexCachingSolver.cpp:278: virtual bool CexCachingSolver::computeValidity(const klee::Query&, klee::Solver::Validity&): Assertion `a && "computeValidity() must have assignment"' failed.
 #0 0x00007f2e06fc03a8 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) (/mnt/baranem/llvm16/install/lib/libLLVM-16.so+0x8103a8)
 #1 0x00007f2e06fbd987 SignalHandler(int) Signals.cpp:0:0
 #2 0x00007f2e05e43190 __restore_rt (/lib64/libc.so.6+0x43190)
 #3 0x00007f2e05e9fef4 __pthread_kill_implementation (/lib64/libc.so.6+0x9fef4)
 #4 0x00007f2e05e43046 gsignal (/lib64/libc.so.6+0x43046)
 #5 0x00007f2e05e2952d abort (/lib64/libc.so.6+0x2952d)
 #6 0x00007f2e05e2a571 _IO_peekc_locked.cold (/lib64/libc.so.6+0x2a571)
 #7 0x00007f2e05e3aad5 __assert_fail (/lib64/libc.so.6+0x3aad5)
 #8 0x0000561023a565a2 decltype(auto) llvm::cast<klee::ConstantExpr, klee::ref<klee::Expr>>(klee::ref<klee::Expr>&) /mnt/baranem/llvm16/install/include/llvm/Support/Casting.h:573:3
 #9 0x0000561023a565a2 decltype(auto) llvm::cast<klee::ConstantExpr, klee::ref<klee::Expr>>(klee::ref<klee::Expr>&) /mnt/baranem/llvm16/install/include/llvm/Support/Casting.h:572:37
#10 0x0000561023a565a2 CexCachingSolver::computeValidity(klee::Query const&, klee::Solver::Validity&) (.cold) /mnt/baranem/klee-float/3.2/lib/Solver/CexCachingSolver.cpp:283:36
#11 0x0000561023b27b3d CachingSolver::computeValidity(klee::Query const&, klee::Solver::Validity&) /mnt/baranem/klee-float/3.2/lib/Solver/CachingSolver.cpp:195:3
#12 0x0000561023b14789 IndependentSolver::computeValidity(klee::Query const&, klee::Solver::Validity&) /mnt/baranem/klee-float/3.2/lib/Solver/IndependentSolver.cpp:411:39
#13 0x0000561023ae7b79 klee::TimingSolver::evaluate(klee::ConstraintSet const&, klee::ref<klee::Expr>, klee::Solver::Validity&, klee::SolverQueryMetaData&) /mnt/baranem/klee-float/3.2/lib/Core/TimingSolver.cpp:42:34
#14 0x0000561023aa3f75 klee::Executor::fork(klee::ExecutionState&, klee::ref<klee::Expr>, bool, BranchType) /mnt/baranem/klee-float/3.2/lib/Core/Executor.cpp:1070:34
#15 0x0000561023ab002f klee::ref<klee::Expr>::~ref() /mnt/baranem/klee-float/3.2/include/klee/ADT/Ref.h:88:17
#16 0x0000561023ab002f klee::Executor::executeInstruction(klee::ExecutionState&, klee::KInstruction*) /mnt/baranem/klee-float/3.2/lib/Core/Executor.cpp:2243:42
#17 0x0000561023ab4f61 klee::Executor::run(klee::ExecutionState&) /mnt/baranem/klee-float/3.2/lib/Core/Executor.cpp:3639:18
#18 0x0000561023ab5a10 std::__uniq_ptr_impl<klee::ExecutionTree, std::default_delete<klee::ExecutionTree>>::reset(klee::ExecutionTree*) /usr/include/c++/15/bits/unique_ptr.h:201:16
#19 0x0000561023ab5a10 std::unique_ptr<klee::ExecutionTree, std::default_delete<klee::ExecutionTree>>::reset(klee::ExecutionTree*) /usr/include/c++/15/bits/unique_ptr.h:511:12
#20 0x0000561023ab5a10 std::unique_ptr<klee::ExecutionTree, std::default_delete<klee::ExecutionTree>>::operator=(std::nullptr_t) /usr/include/c++/15/bits/unique_ptr.h:436:7
#21 0x0000561023ab5a10 klee::Executor::runFunctionAsMain(llvm::Function*, int, char**, char**) /mnt/baranem/klee-float/3.2/lib/Core/Executor.cpp:4733:19
#22 0x0000561023a64206 main /mnt/baranem/klee-float/3.2/tools/klee/main.cpp:1692:5
#23 0x00007f2e05e2b4fe __libc_start_call_main (/lib64/libc.so.6+0x2b4fe)
#24 0x00007f2e05e2b62b __libc_start_main@GLIBC_2.2.5 (/lib64/libc.so.6+0x2b62b)
#25 0x0000561023a785c5 _start /home/abuild/rpmbuild/BUILD/glibc-2.43-build/glibc-2.43/csu/../sysdeps/x86_64/start.S:117:0
timeout: the monitored command dumped core
(check-sat)
(exit)
