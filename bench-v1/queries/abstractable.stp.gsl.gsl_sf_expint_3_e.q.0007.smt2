(set-logic QF_ABVFP)
(set-info :smt-lib-version 2.0)
(set-info :status unknown)
(declare-fun |a0_0| () (Array (_ BitVec 32) (_ BitVec 8) ))
(declare-fun |__klee_fp_bits_0| () (_ BitVec 64))
(declare-fun |__klee_fp_bits_1| () (_ BitVec 64))
(assert (let ((|?let_k_0| ((_ to_fp 11 53) (concat (select |a0_0|  #x00000007) (concat (select |a0_0|  #x00000006) (concat (select |a0_0|  #x00000005) (concat (select |a0_0|  #x00000004) (concat (select |a0_0|  #x00000003) (concat (select |a0_0|  #x00000002) (concat (select |a0_0|  #x00000001) (select |a0_0|  #x00000000))))))))) )) 
(let ((|?let_k_1| (concat (select |a0_0|  #x00000007) (concat (select |a0_0|  #x00000006) (concat (select |a0_0|  #x00000005) (concat (select |a0_0|  #x00000004) (concat (select |a0_0|  #x00000003) (concat (select |a0_0|  #x00000002) (concat (select |a0_0|  #x00000001) (select |a0_0|  #x00000000))))))))))
(and (= (fp.mul RNE |?let_k_0| (fp.mul RNE |?let_k_0| ((_ to_fp 11 53) (bvxor  #x8000000000000000 |?let_k_1|)))) ((_ to_fp 11 53) |__klee_fp_bits_1|)) (and (= (fp #b1 #b10000000010 #b0000000000000000000000000000000000000000000000000011) ((_ to_fp 11 53) |__klee_fp_bits_0|)) (and (fp.gt (fp #b0 #b10000000000 #b1010011011010001010001001000010111000011100011010101) |?let_k_0|) (and (or (fp.isNaN |?let_k_0|) (fp.gt |?let_k_0| (fp #b0 #b10000000000 #b0000000000000000000000000000000000000000000000000000))) (and (not (fp.gt (fp #b0 #b01111101110 #b0100010100011001100010000100001100010010010100000001) |?let_k_0|)) (and (not (fp.gt (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) |?let_k_0|)) (not (= |__klee_fp_bits_0| |__klee_fp_bits_1|))))))))) )  
)


gsl: expint3.c:107: ERROR: domain error
Default GSL error handler invoked.
(check-sat)
(exit)
