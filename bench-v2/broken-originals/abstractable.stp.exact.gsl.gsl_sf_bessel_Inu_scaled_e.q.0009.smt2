(set-logic QF_ABVFP)
(set-info :smt-lib-version 2.0)
(set-info :status unknown)
(declare-fun |a0_0| () (Array (_ BitVec 32) (_ BitVec 8) ))
(declare-fun |a1_1| () (Array (_ BitVec 32) (_ BitVec 8) ))
(assert (let ((|?let_k_0| ((_ to_fp 11 53) (concat (select |a0_0|  #x00000007) (concat (select |a0_0|  #x00000006) (concat (select |a0_0|  #x00000005) (concat (select |a0_0|  #x00000004) (concat (select |a0_0|  #x00000003) (concat (select |a0_0|  #x00000002) (concat (select |a0_0|  #x00000001) (select |a0_0|  #x00000000))))))))) )) 
(let ((|?let_k_1| ((_ to_fp 11 53) (concat (select |a1_1|  #x00000007) (concat (select |a1_1|  #x00000006) (concat (select |a1_1|  #x00000005) (concat (select |a1_1|  #x00000004) (concat (select |a1_1|  #x00000003) (concat (select |a1_1|  #x00000002) (concat (select |a1_1|  #x00000001) (select |a1_1|  #x00000000))))))))))) 
(let ((|?let_k_2| (select |a1_1|  #x00000000))) 
(let ((|?let_k_3| (select |a1_1|  #x00000001))) 
(let ((|?let_k_4| (select |a1_1|  #x00000002))) 
(let ((|?let_k_5| (select |a1_1|  #x00000003))) 
(let ((|?let_k_6| (select |a1_1|  #x00000004))) 
(let ((|?let_k_7| (select |a1_1|  #x00000005))) 
(let ((|?let_k_8| (select |a1_1|  #x00000006))) 
(let ((|?let_k_9| (select |a1_1|  #x00000007)))
(and (not (fp.gt (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) |?let_k_0|)) (and (fp.gt (fp.mul RNE (fp.add RNE |?let_k_0| (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp #b0 #b10000000010 #b0100000000000000000000000000000000000000000000000000)) (fp.mul RNE |?let_k_1| |?let_k_1|)) (and (not (fp.gt (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) |?let_k_1|)) (not (and (and (and (and (and (and (and (= |?let_k_2|  #x00) (= |?let_k_3|  #x00)) (= |?let_k_4|  #x00)) (= |?let_k_5|  #x00)) (= |?let_k_6|  #x00)) (= |?let_k_7|  #x00)) (= |?let_k_8|  #x00)) (= |?let_k_9|  #x00))))))))))))))) )  
)


gsl: bessel_Inu.c:43: ERROR: domain error
Default GSL error handler invoked.
(check-sat)
(exit)
