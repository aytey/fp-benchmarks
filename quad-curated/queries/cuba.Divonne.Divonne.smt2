; start Bitwuzla query
(set-logic QF_AUFBVFP)
(assert (not false))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64)))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64)))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611380588133510383 64) (_ bv12167001410319065959 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611380588133510383 64) (_ bv12167001410319065959 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611356632816343519 64) (_ bv5887258746928580303 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611356632816343519 64) (_ bv5887258746928580303 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611332677499176654 64) (_ bv18054260157247646262 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611332677499176654 64) (_ bv18054260157247646262 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611308722182009790 64) (_ bv11774517493857160606 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611308722182009790 64) (_ bv11774517493857160606 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611284766864842926 64) (_ bv5494774830466674949 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611284766864842926 64) (_ bv5494774830466674949 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611260811547676061 64) (_ bv17661776240785740909 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611260811547676061 64) (_ bv17661776240785740909 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611236856230509197 64) (_ bv11382033577395255252 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611236856230509197 64) (_ bv11382033577395255252 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611212900913342333 64) (_ bv5102290914004769596 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611212900913342333 64) (_ bv5102290914004769596 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611188945596175468 64) (_ bv17269292324323835555 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611188945596175468 64) (_ bv17269292324323835555 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611164990279008604 64) (_ bv10989549660933349899 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611164990279008604 64) (_ bv10989549660933349899 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611141034961841740 64) (_ bv4709806997542864242 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611141034961841740 64) (_ bv4709806997542864242 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611111090815383159 64) (_ bv15306872742014308788 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611111090815383159 64) (_ bv15306872742014308788 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611063180181049431 64) (_ bv2747387415233337475 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611063180181049431 64) (_ bv2747387415233337475 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611015269546715702 64) (_ bv8634646162161917778 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611015269546715702 64) (_ bv8634646162161917778 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4610967358912381973 64) (_ bv14521904909090498081 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4610967358912381973 64) (_ bv14521904909090498081 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4610919448278048245 64) (_ bv1962419582309526768 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4610919448278048245 64) (_ bv1962419582309526768 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4610871537643714516 64) (_ bv7849678329238107071 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4610871537643714516 64) (_ bv7849678329238107071 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4610805660521505639 64) (_ bv9027130078623823131 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4610805660521505639 64) (_ bv9027130078623823131 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4610709839252838182 64) (_ bv2354903498771432121 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4610709839252838182 64) (_ bv2354903498771432121 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4610614017984170724 64) (_ bv14129420992628592727 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4610614017984170724 64) (_ bv14129420992628592727 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4610476274910461254 64) (_ bv14914388825552403434 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4610476274910461254 64) (_ bv14914388825552403434 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4610284632373126340 64) (_ bv1569935665847621414 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4610284632373126340 64) (_ bv1569935665847621414 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4609817503688372485 64) (_ bv8242162245700012424 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4609817503688372485 64) (_ bv8242162245700012424 64))))) (not (not (fp.gt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(define-const @def1 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))))) (let ((_let1 ((_ to_fp 15 113) (concat (_ bv4609817503688372485 64) (_ bv8242162245700012424 64))))) (let ((_let2 ((_ to_fp 15 113) (concat (_ bv4610284632373126340 64) (_ bv1569935665847621414 64))))) (let ((_let3 ((_ to_fp 15 113) (concat (_ bv4610476274910461254 64) (_ bv14914388825552403434 64))))) (let ((_let4 ((_ to_fp 15 113) (concat (_ bv4610614017984170724 64) (_ bv14129420992628592727 64))))) (let ((_let5 ((_ to_fp 15 113) (concat (_ bv4610709839252838182 64) (_ bv2354903498771432121 64))))) (let ((_let6 ((_ to_fp 15 113) (concat (_ bv4610805660521505639 64) (_ bv9027130078623823131 64))))) (let ((_let7 ((_ to_fp 15 113) (concat (_ bv4610871537643714516 64) (_ bv7849678329238107071 64))))) (let ((_let8 ((_ to_fp 15 113) (concat (_ bv4610919448278048245 64) (_ bv1962419582309526768 64))))) (let ((_let9 ((_ to_fp 15 113) (concat (_ bv4610967358912381973 64) (_ bv14521904909090498081 64))))) (let ((_let10 ((_ to_fp 15 113) (concat (_ bv4611015269546715702 64) (_ bv8634646162161917778 64))))) (let ((_let11 ((_ to_fp 15 113) (concat (_ bv4611063180181049431 64) (_ bv2747387415233337475 64))))) (let ((_let12 ((_ to_fp 15 113) (concat (_ bv4611111090815383159 64) (_ bv15306872742014308788 64))))) (let ((_let13 ((_ to_fp 15 113) (concat (_ bv4611141034961841740 64) (_ bv4709806997542864242 64))))) (let ((_let14 ((_ to_fp 15 113) (concat (_ bv4611164990279008604 64) (_ bv10989549660933349899 64))))) (let ((_let15 ((_ to_fp 15 113) (concat (_ bv4611188945596175468 64) (_ bv17269292324323835555 64))))) (let ((_let16 ((_ to_fp 15 113) (concat (_ bv4611212900913342333 64) (_ bv5102290914004769596 64))))) (let ((_let17 ((_ to_fp 15 113) (concat (_ bv4611236856230509197 64) (_ bv11382033577395255252 64))))) (let ((_let18 ((_ to_fp 15 113) (concat (_ bv4611260811547676061 64) (_ bv17661776240785740909 64))))) (let ((_let19 ((_ to_fp 15 113) (concat (_ bv4611284766864842926 64) (_ bv5494774830466674949 64))))) (let ((_let20 ((_ to_fp 15 113) (concat (_ bv4611308722182009790 64) (_ bv11774517493857160606 64))))) (let ((_let21 ((_ to_fp 15 113) (concat (_ bv4611332677499176654 64) (_ bv18054260157247646262 64))))) (let ((_let22 ((_ to_fp 15 113) (concat (_ bv4611356632816343519 64) (_ bv5887258746928580303 64))))) (let ((_let23 ((_ to_fp 15 113) (concat (_ bv4611380588133510383 64) (_ bv12167001410319065959 64))))) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let1) _let1) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let2) _let2) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let3) _let3) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let4) _let4) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let5) _let5) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let6) _let6) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let7) _let7) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let8) _let8) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let9) _let9) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let10) _let10) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let11) _let11) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let12) _let12) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let13) _let13) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let14) _let14) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let15) _let15) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let16) _let16) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let17) _let17) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let18) _let18) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let19) _let19) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let20) _let20) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let21) _let21) (fp.add RNE (fp.mul RNE (fp.mul RNE _let0 _let22) _let22) (fp.mul RNE (fp.mul RNE _let0 _let23) _let23))))))))))))))))))))))))))))))))))))))))))))))))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64))))) (let ((_let1 (fp.abs (fp.mul RNE ((_ to_fp 15 113) (concat (_ bv4609817503688372485 64) (_ bv8242162245700012424 64))) (fp.add RNE (fp.add RNE @def1 @def1) @def0))))) (let ((_let2 ((_ to_fp 15 113) (concat (_ bv4582131145872769024 64) (_ bv0 64))))) (not (= (_ bv4294967295 32) (ite (fp.gt (fp.div RNE _let0 (ite (fp.gt _let1 _let2) _let1 _let2)) _let0) (_ bv0 32) (_ bv4294967295 32))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64)))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611380588133510383 64) (_ bv12167001410319065959 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(define-const @def1 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611380588133510383 64) (_ bv12167001410319065959 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64)))))
(assert (not (fp.lt @def1 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (not (fp.gt @def1 @def0))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64)))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611380588133510383 64) (_ bv12167001410319065959 64))))) (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64)))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611356632816343519 64) (_ bv5887258746928580303 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(define-const @def1 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611356632816343519 64) (_ bv5887258746928580303 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64)))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611380588133510383 64) (_ bv12167001410319065959 64))))) (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64)))))))
(assert (not (fp.lt @def1 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (not (fp.gt @def1 @def0))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64)))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611380588133510383 64) (_ bv12167001410319065959 64))))) (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64)))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611356632816343519 64) (_ bv5887258746928580303 64))))) (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64)))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611332677499176654 64) (_ bv18054260157247646262 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(define-const @def1 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611332677499176654 64) (_ bv18054260157247646262 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64)))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611380588133510383 64) (_ bv12167001410319065959 64))))) (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64)))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611356632816343519 64) (_ bv5887258746928580303 64))))) (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64)))))))
(assert (not (fp.lt @def1 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (not (fp.gt @def1 @def0))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64)))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611380588133510383 64) (_ bv12167001410319065959 64))))) (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64)))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611356632816343519 64) (_ bv5887258746928580303 64))))) (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64)))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611332677499176654 64) (_ bv18054260157247646262 64))))) (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64)))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611308722182009790 64) (_ bv11774517493857160606 64))))) (not (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const coeff0 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611404543450677248 64) (_ bv0 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(define-const @def1 (_ FloatingPoint 15 113) (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611308722182009790 64) (_ bv11774517493857160606 64))))) (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0)))
(assert (not (fp.lt @def0 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (fp.gt @def0 ((_ to_fp 15 113) (concat (_ bv14123006956457164799 64) (_ bv17293822569102704640 64)))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611380588133510383 64) (_ bv12167001410319065959 64))))) (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64)))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611356632816343519 64) (_ bv5887258746928580303 64))))) (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64)))))))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (_ bv4611332677499176654 64) (_ bv18054260157247646262 64))))) (not (fp.lt (fp.mul RNE (fp.mul RNE ((_ to_fp 15 113) (concat (select coeff0 (_ bv15 32)) (concat (select coeff0 (_ bv14 32)) (concat (select coeff0 (_ bv13 32)) (concat (select coeff0 (_ bv12 32)) (concat (select coeff0 (_ bv11 32)) (concat (select coeff0 (_ bv10 32)) (concat (select coeff0 (_ bv9 32)) (concat (select coeff0 (_ bv8 32)) (concat (select coeff0 (_ bv7 32)) (concat (select coeff0 (_ bv6 32)) (concat (select coeff0 (_ bv5 32)) (concat (select coeff0 (_ bv4 32)) (concat (select coeff0 (_ bv3 32)) (concat (select coeff0 (_ bv2 32)) (concat (select coeff0 (_ bv1 32)) (select coeff0 (_ bv0 32)))))))))))))))))) _let0) _let0) ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64)))))))
(assert (not (fp.lt @def1 ((_ to_fp 15 113) (concat (_ bv4899634919602388991 64) (_ bv17293822569102704640 64))))))
(assert (not (not (fp.gt @def1 @def0))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

