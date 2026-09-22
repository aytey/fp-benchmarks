(set-logic QF_ABVFP)
(set-info :smt-lib-version 2.0)
(set-info :status unknown)
(declare-fun |__klee_fp_bits_37| () (_ BitVec 32))
(declare-fun |__klee_fp_bits_36| () (_ BitVec 32))
(declare-fun |a2_0| () (Array (_ BitVec 32) (_ BitVec 8) ))
(assert (let ((|?let_k_0| ((_ to_fp 8 24) (concat (select |a2_0|  #x0000002B) (concat (select |a2_0|  #x0000002A) (concat (select |a2_0|  #x00000029) (select |a2_0|  #x00000028))))) )) 
(let ((|?let_k_1| (concat (select |a2_0|  #x0000002B) (concat (select |a2_0|  #x0000002A) (concat (select |a2_0|  #x00000029) (select |a2_0|  #x00000028)))))) 
(let ((|?let_k_2| ((_ to_fp 8 24) (concat (select |a2_0|  #x0000002F) (concat (select |a2_0|  #x0000002E) (concat (select |a2_0|  #x0000002D) (select |a2_0|  #x0000002C))))))) 
(let ((|?let_k_3| (concat (select |a2_0|  #x0000002F) (concat (select |a2_0|  #x0000002E) (concat (select |a2_0|  #x0000002D) (select |a2_0|  #x0000002C)))))) 
(let ((|?let_k_4| ((_ to_fp 8 24) (ite (or (fp.isNaN |?let_k_2|) (fp.gt (fp #b0 #b00000000 #b00000000000000000000000) |?let_k_2|)) (bvxor  #x80000000 |?let_k_3|) |?let_k_3|)))) 
(let ((|?let_k_5| (ite (or (fp.isNaN |?let_k_2|) (fp.gt (fp #b0 #b00000000 #b00000000000000000000000) |?let_k_2|)) (bvxor  #x80000000 |?let_k_3|) |?let_k_3|))) 
(let ((|?let_k_6| (ite (or (fp.isNaN |?let_k_0|) (fp.gt (fp #b0 #b00000000 #b00000000000000000000000) |?let_k_0|)) (bvxor  #x80000000 |?let_k_1|) |?let_k_1|))) 
(let ((|?let_k_7| (ite (or (fp.isNaN |?let_k_4|) (fp.gt (fp #b0 #b00000000 #b00000000000000000000000) |?let_k_4|)) (bvxor  #x80000000 |?let_k_5|) |?let_k_5|))) 
(let ((|?let_k_8| ((_ to_fp 8 24) |?let_k_7|))) 
(let ((|?let_k_9| ((_ to_fp 8 24) |?let_k_6|))) 
(let ((|?let_k_10| ((_ to_fp 8 24) (ite (fp.geq |?let_k_9| |?let_k_8|) |?let_k_6| |?let_k_7|)))) 
(let ((|?let_k_11| (fp.div RNE ((_ to_fp 8 24) (ite (fp.geq |?let_k_8| |?let_k_9|) |?let_k_6| |?let_k_7|)) |?let_k_10|))) 
(let ((|?let_k_12| (fp.mul RNE |?let_k_2| (fp #b0 #b11100101 #b00000000000000000000000)))) 
(let ((|?let_k_13| (or (fp.isNaN |?let_k_0|) (fp.gt (fp #b0 #b00000000 #b00000000000000000000000) |?let_k_0|)))) 
(let ((|?let_k_14| (fp.mul RNE |?let_k_10| (fp.sqrt RNE (fp.fma RNE |?let_k_11| |?let_k_11| (fp #b0 #b01111111 #b00000000000000000000000)))))) 
(let ((|?let_k_15| (fp.geq |?let_k_14| (fp #b0 #b00000000 #b00000000000000000000000)))) 
(let ((|?let_k_16| (bvxor  #x80000000 |__klee_fp_bits_36|))) 
(let ((|?let_k_17| (ite |?let_k_13| (ite |?let_k_15| |?let_k_16| |__klee_fp_bits_36|) (ite |?let_k_15| |__klee_fp_bits_36| |?let_k_16|)))) 
(let ((|?let_k_18| ((_ to_fp 8 24) (ite (fp.geq |?let_k_8| |?let_k_9|) |?let_k_6| |?let_k_7|)))) 
(let ((|?let_k_19| (fp.isNaN |?let_k_4|))) 
(let ((|?let_k_20| (fp.isNaN |?let_k_0|)))
(and (= |?let_k_12| ((_ to_fp 8 24) |__klee_fp_bits_37|)) (and (= |?let_k_14| ((_ to_fp 8 24) |__klee_fp_bits_36|)) (and (not (fp.isZero ((_ to_fp 8 24) (concat (select |a2_0|  #x0000003F) (concat (select |a2_0|  #x0000003E) (concat (select |a2_0|  #x0000003D) (select |a2_0|  #x0000003C))))))) (and (fp.isZero ((_ to_fp 8 24) (concat (select |a2_0|  #x0000003B) (concat (select |a2_0|  #x0000003A) (concat (select |a2_0|  #x00000039) (select |a2_0|  #x00000038)))))) (and (not (=  #xFFFFFFFF (bvand (bvnot (ite (fp.isNaN ((_ to_fp 8 24) (ite (or (fp.isNaN |?let_k_12|) (fp.gt (fp #b0 #b00000000 #b00000000000000000000000) |?let_k_12|)) (bvxor  #x80000000 |__klee_fp_bits_37|) |__klee_fp_bits_37|)))  #x00000001  #x00000000)) (bvnot (ite (fp.isNaN (fp.mul RNE |?let_k_0| (fp #b0 #b11100101 #b00000000000000000000000)))  #x00000001  #x00000000))))) (and (fp.gt (fp #b0 #b00011001 #b00000000000000000000000) ((_ to_fp 8 24) (ite (fp.geq (fp #b0 #b00000000 #b00000000000000000000000) ((_ to_fp 8 24) |?let_k_17|)) (bvxor  #x80000000 |?let_k_17|) |?let_k_17|))) (and (not (fp.isZero |?let_k_18|)) (and (not |?let_k_19|) (and (not |?let_k_20|) (not (fp.isZero |?let_k_4|))))))))))))))))))))))))))))))) )  
)


klee: /mnt/baranem/klee-float/3.2/lib/Solver/CexCachingSolver.cpp:278: virtual bool CexCachingSolver::computeValidity(const klee::Query&, klee::Solver::Validity&): Assertion `a && "computeValidity() must have assignment"' failed.
 #0 0x00007f57b25c03a8 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) (/mnt/baranem/llvm16/install/lib/libLLVM-16.so+0x8103a8)
 #1 0x00007f57b25bd987 SignalHandler(int) Signals.cpp:0:0
 #2 0x00007f57b1443190 __restore_rt (/lib64/libc.so.6+0x43190)
 #3 0x00007f57b149fef4 __pthread_kill_implementation (/lib64/libc.so.6+0x9fef4)
 #4 0x00007f57b1443046 gsignal (/lib64/libc.so.6+0x43046)
 #5 0x00007f57b142952d abort (/lib64/libc.so.6+0x2952d)
 #6 0x00007f57b142a571 _IO_peekc_locked.cold (/lib64/libc.so.6+0x2a571)
 #7 0x00007f57b143aad5 __assert_fail (/lib64/libc.so.6+0x3aad5)
 #8 0x00005634992cc5a2 decltype(auto) llvm::cast<klee::ConstantExpr, klee::ref<klee::Expr>>(klee::ref<klee::Expr>&) /mnt/baranem/llvm16/install/include/llvm/Support/Casting.h:573:3
 #9 0x00005634992cc5a2 decltype(auto) llvm::cast<klee::ConstantExpr, klee::ref<klee::Expr>>(klee::ref<klee::Expr>&) /mnt/baranem/llvm16/install/include/llvm/Support/Casting.h:572:37
#10 0x00005634992cc5a2 CexCachingSolver::computeValidity(klee::Query const&, klee::Solver::Validity&) (.cold) /mnt/baranem/klee-float/3.2/lib/Solver/CexCachingSolver.cpp:283:36
#11 0x000056349939db3d CachingSolver::computeValidity(klee::Query const&, klee::Solver::Validity&) /mnt/baranem/klee-float/3.2/lib/Solver/CachingSolver.cpp:195:3
#12 0x000056349938a789 IndependentSolver::computeValidity(klee::Query const&, klee::Solver::Validity&) /mnt/baranem/klee-float/3.2/lib/Solver/IndependentSolver.cpp:411:39
#13 0x000056349935db79 klee::TimingSolver::evaluate(klee::ConstraintSet const&, klee::ref<klee::Expr>, klee::Solver::Validity&, klee::SolverQueryMetaData&) /mnt/baranem/klee-float/3.2/lib/Core/TimingSolver.cpp:42:34
#14 0x0000563499319f75 klee::Executor::fork(klee::ExecutionState&, klee::ref<klee::Expr>, bool, BranchType) /mnt/baranem/klee-float/3.2/lib/Core/Executor.cpp:1070:34
#15 0x000056349932602f klee::ref<klee::Expr>::~ref() /mnt/baranem/klee-float/3.2/include/klee/ADT/Ref.h:88:17
#16 0x000056349932602f klee::Executor::executeInstruction(klee::ExecutionState&, klee::KInstruction*) /mnt/baranem/klee-float/3.2/lib/Core/Executor.cpp:2243:42
#17 0x000056349932af61 klee::Executor::run(klee::ExecutionState&) /mnt/baranem/klee-float/3.2/lib/Core/Executor.cpp:3639:18
#18 0x000056349932ba10 std::__uniq_ptr_impl<klee::ExecutionTree, std::default_delete<klee::ExecutionTree>>::reset(klee::ExecutionTree*) /usr/include/c++/15/bits/unique_ptr.h:201:16
#19 0x000056349932ba10 std::unique_ptr<klee::ExecutionTree, std::default_delete<klee::ExecutionTree>>::reset(klee::ExecutionTree*) /usr/include/c++/15/bits/unique_ptr.h:511:12
#20 0x000056349932ba10 std::unique_ptr<klee::ExecutionTree, std::default_delete<klee::ExecutionTree>>::operator=(std::nullptr_t) /usr/include/c++/15/bits/unique_ptr.h:436:7
#21 0x000056349932ba10 klee::Executor::runFunctionAsMain(llvm::Function*, int, char**, char**) /mnt/baranem/klee-float/3.2/lib/Core/Executor.cpp:4733:19
#22 0x00005634992da206 main /mnt/baranem/klee-float/3.2/tools/klee/main.cpp:1692:5
#23 0x00007f57b142b4fe __libc_start_call_main (/lib64/libc.so.6+0x2b4fe)
#24 0x00007f57b142b62b __libc_start_main@GLIBC_2.2.5 (/lib64/libc.so.6+0x2b62b)
#25 0x00005634992ee5c5 _start /home/abuild/rpmbuild/BUILD/glibc-2.43-build/glibc-2.43/csu/../sysdeps/x86_64/start.S:117:0
timeout: the monitored command dumped core
(check-sat)
(exit)
