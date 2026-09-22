(set-logic QF_ABVFP)
(set-info :smt-lib-version 2.0)
(set-info :status unknown)
(declare-fun |a1_1| () (Array (_ BitVec 32) (_ BitVec 8) ))
(assert (let ((|?let_k_0| ((_ to_fp 11 53) (concat (select |a1_1|  #x00000007) (concat (select |a1_1|  #x00000006) (concat (select |a1_1|  #x00000005) (concat (select |a1_1|  #x00000004) (concat (select |a1_1|  #x00000003) (concat (select |a1_1|  #x00000002) (concat (select |a1_1|  #x00000001) (select |a1_1|  #x00000000))))))))) ))
(and (not (fp.gt (fp #b0 #b01111111001 #b0100011110101110000101000111101011100001010001111011) (fp.abs |?let_k_0|))) (and (not (fp.isZero |?let_k_0|)) (and (or (fp.isNaN |?let_k_0|) (fp.gt (fp #b0 #b01111111110 #b0000000000000000000000000000000000000000000000000000) |?let_k_0|)) (and (not (fp.gt (fp #b0 #b01111111000 #b0100011110101110000101000111101011100001010001111011) (fp.abs (fp.add RNE |?let_k_0| (fp #b1 #b10000000000 #b0000000000000000000000000000000000000000000000000000))))) (and (not (fp.gt (fp #b0 #b01111111000 #b0100011110101110000101000111101011100001010001111011) (fp.abs (fp.add RNE |?let_k_0| (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))) (not (fp.gt |?let_k_0| (fp #b1 #b10000110000 #b0100010111110011000001101101110010011100100010000011)))))))) )  
)


gsl: gamma.c:1180: ERROR: error
Default GSL error handler invoked.
(check-sat)
(exit)
