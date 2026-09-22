(set-logic QF_ABVFP)
(set-info :smt-lib-version 2.0)
(set-info :status unknown)
(declare-fun |a0_0| () (Array (_ BitVec 32) (_ BitVec 8) ))
(declare-fun |a1_1| () (Array (_ BitVec 32) (_ BitVec 8) ))
(assert (let ((|?let_k_0| (fp.abs ((_ to_fp 11 53) (concat (select |a0_0|  #x00000007) (concat (select |a0_0|  #x00000006) (concat (select |a0_0|  #x00000005) (concat (select |a0_0|  #x00000004) (concat (select |a0_0|  #x00000003) (concat (select |a0_0|  #x00000002) (concat (select |a0_0|  #x00000001) (select |a0_0|  #x00000000)))))))))) )) 
(let ((|?let_k_1| (fp.abs ((_ to_fp 11 53) (concat (select |a1_1|  #x00000007) (concat (select |a1_1|  #x00000006) (concat (select |a1_1|  #x00000005) (concat (select |a1_1|  #x00000004) (concat (select |a1_1|  #x00000003) (concat (select |a1_1|  #x00000002) (concat (select |a1_1|  #x00000001) (select |a1_1|  #x00000000)))))))))))) 
(let ((|?let_k_2| (ite (fp.gt |?let_k_0| |?let_k_1|) |?let_k_0| |?let_k_1|))) 
(let ((|?let_k_3| ((_ to_fp 11 53) (concat (select |a1_1|  #x00000007) (concat (select |a1_1|  #x00000006) (concat (select |a1_1|  #x00000005) (concat (select |a1_1|  #x00000004) (concat (select |a1_1|  #x00000003) (concat (select |a1_1|  #x00000002) (concat (select |a1_1|  #x00000001) (select |a1_1|  #x00000000))))))))))) 
(let ((|?let_k_4| ((_ to_fp 11 53) (concat (select |a0_0|  #x00000007) (concat (select |a0_0|  #x00000006) (concat (select |a0_0|  #x00000005) (concat (select |a0_0|  #x00000004) (concat (select |a0_0|  #x00000003) (concat (select |a0_0|  #x00000002) (concat (select |a0_0|  #x00000001) (select |a0_0|  #x00000000)))))))))))
(and (or (fp.gt (fp #b0 #b10111111110 #b1100110011001100110011001100110011001100110011001100) |?let_k_2|) (fp.gt (fp.div RNE (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111011) |?let_k_2|) (ite (fp.gt |?let_k_1| |?let_k_0|) |?let_k_0| |?let_k_1|))) (and (not (and (fp.geq |?let_k_0| (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp.geq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) |?let_k_1|))) (and (not (and (fp.geq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) |?let_k_0|) (fp.geq |?let_k_1| (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))) (and (not (fp.isZero |?let_k_3|)) (and (not (fp.isZero |?let_k_4|)) (not (fp.gt (fp #b0 #b00000000001 #b0000000000000000000000000000000000000000000000000000) (fp.abs (fp.mul RNE |?let_k_4| |?let_k_3|))))))))))))) )  
)


gsl: elementary.c:57: ERROR: underflow
Default GSL error handler invoked.
(check-sat)
(exit)
