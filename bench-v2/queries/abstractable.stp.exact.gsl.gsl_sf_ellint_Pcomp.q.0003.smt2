(set-logic QF_ABVFP)
(set-info :smt-lib-version 2.0)
(set-info :status unknown)
(declare-fun |a0_1| () (Array (_ BitVec 32) (_ BitVec 8) ))
(assert (let ((|?let_k_0| ((_ to_fp 11 53) (concat (select |a0_1|  #x00000007) (concat (select |a0_1|  #x00000006) (concat (select |a0_1|  #x00000005) (concat (select |a0_1|  #x00000004) (concat (select |a0_1|  #x00000003) (concat (select |a0_1|  #x00000002) (concat (select |a0_1|  #x00000001) (select |a0_1|  #x00000000))))))))) ))
(not (or (fp.isNaN |?let_k_0|) (fp.gt (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (fp.mul RNE |?let_k_0| |?let_k_0|)))) )  
)


(check-sat)
(exit)
