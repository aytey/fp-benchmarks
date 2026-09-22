(set-logic QF_ABVFP)
(set-info :smt-lib-version 2.0)
(set-info :status unknown)
(declare-fun |a0_0| () (Array (_ BitVec 32) (_ BitVec 8) ))
(assert (let ((|?let_k_0| ((_ to_fp 11 53) (concat (select |a0_0|  #x00000007) (concat (select |a0_0|  #x00000006) (concat (select |a0_0|  #x00000005) (concat (select |a0_0|  #x00000004) (concat (select |a0_0|  #x00000003) (concat (select |a0_0|  #x00000002) (concat (select |a0_0|  #x00000001) (select |a0_0|  #x00000000))))))))) ))
(and (not (fp.gt (fp #b0 #b10000001000 #b0110001000110010101111011101011110101011110011010010) |?let_k_0|)) (and (not (fp.gt (fp #b0 #b10000000100 #b0001101011001101110101100011001011110110011000101010) |?let_k_0|)) (and (or (fp.isNaN |?let_k_0|) (fp.gt |?let_k_0| (fp #b0 #b10000000001 #b0000000000000000000000000000000000000000000000000000))) (and (not (fp.gt (fp #b0 #b01111100110 #b0110101000001001111001100110011111110011101111001101) |?let_k_0|)) (and (not (fp.gt (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) |?let_k_0|)) (not (fp.gt (fp #b0 #b00000000001 #b0000000000000000000000000000000000000000000000000000) (fp.abs (fp.div RNE (fp.div RNE (fp.div RNE (fp.div RNE (fp.div RNE (fp #b0 #b10000001000 #b0011000100110011111100100111100100011010101101101000) |?let_k_0|) |?let_k_0|) |?let_k_0|) |?let_k_0|) |?let_k_0|))))))))) )  
)


gsl: debye.c:470: ERROR: underflow
Default GSL error handler invoked.
(check-sat)
(exit)
