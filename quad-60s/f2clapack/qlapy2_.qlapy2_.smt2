; start Bitwuzla query
(set-logic ALL)
(assert (not false))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const a00 (Array (_ BitVec 32) (_ BitVec 8)))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (select a00 (_ bv15 32)) (concat (select a00 (_ bv14 32)) (concat (select a00 (_ bv13 32)) (concat (select a00 (_ bv12 32)) (concat (select a00 (_ bv11 32)) (concat (select a00 (_ bv10 32)) (concat (select a00 (_ bv9 32)) (concat (select a00 (_ bv8 32)) (concat (select a00 (_ bv7 32)) (concat (select a00 (_ bv6 32)) (concat (select a00 (_ bv5 32)) (concat (select a00 (_ bv4 32)) (concat (select a00 (_ bv3 32)) (concat (select a00 (_ bv2 32)) (concat (select a00 (_ bv1 32)) (select a00 (_ bv0 32)))))))))))))))))))) (not (not (not (fp.eq _let0 _let0))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const a11 (Array (_ BitVec 32) (_ BitVec 8)))
(assert (let ((_let0 ((_ to_fp 15 113) (concat (select a11 (_ bv15 32)) (concat (select a11 (_ bv14 32)) (concat (select a11 (_ bv13 32)) (concat (select a11 (_ bv12 32)) (concat (select a11 (_ bv11 32)) (concat (select a11 (_ bv10 32)) (concat (select a11 (_ bv9 32)) (concat (select a11 (_ bv8 32)) (concat (select a11 (_ bv7 32)) (concat (select a11 (_ bv6 32)) (concat (select a11 (_ bv5 32)) (concat (select a11 (_ bv4 32)) (concat (select a11 (_ bv3 32)) (concat (select a11 (_ bv2 32)) (concat (select a11 (_ bv1 32)) (select a11 (_ bv0 32)))))))))))))))))))) (not (not (not (fp.eq _let0 _let0))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABVFP)
(declare-const a00 (Array (_ BitVec 32) (_ BitVec 8)))
(declare-const a11 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ BitVec 128) (concat (select a00 (_ bv15 32)) (concat (select a00 (_ bv14 32)) (concat (select a00 (_ bv13 32)) (concat (select a00 (_ bv12 32)) (concat (select a00 (_ bv11 32)) (concat (select a00 (_ bv10 32)) (concat (select a00 (_ bv9 32)) (concat (select a00 (_ bv8 32)) (concat (select a00 (_ bv7 32)) (concat (select a00 (_ bv6 32)) (concat (select a00 (_ bv5 32)) (concat (select a00 (_ bv4 32)) (concat (select a00 (_ bv3 32)) (concat (select a00 (_ bv2 32)) (concat (select a00 (_ bv1 32)) (select a00 (_ bv0 32))))))))))))))))))
(define-const @def1 (_ BitVec 128) (concat (select a11 (_ bv15 32)) (concat (select a11 (_ bv14 32)) (concat (select a11 (_ bv13 32)) (concat (select a11 (_ bv12 32)) (concat (select a11 (_ bv11 32)) (concat (select a11 (_ bv10 32)) (concat (select a11 (_ bv9 32)) (concat (select a11 (_ bv8 32)) (concat (select a11 (_ bv7 32)) (concat (select a11 (_ bv6 32)) (concat (select a11 (_ bv5 32)) (concat (select a11 (_ bv4 32)) (concat (select a11 (_ bv3 32)) (concat (select a11 (_ bv2 32)) (concat (select a11 (_ bv1 32)) (select a11 (_ bv0 32))))))))))))))))))
(define-const @def2 (_ BitVec 128) (concat (_ bv9223372036854775808 64) (_ bv0 64)))
(define-const @def3 (_ BitVec 128) (let ((_let0 ((_ to_fp 15 113) @def0))) (ite (or (fp.isNaN _let0) (fp.lt _let0 ((_ to_fp 15 113) (concat (_ bv0 64) (_ bv0 64))))) (bvxor @def2 @def0) @def0)))
(define-const @def4 (_ BitVec 128) (let ((_let0 ((_ to_fp 15 113) @def1))) (ite (or (fp.isNaN _let0) (fp.lt _let0 ((_ to_fp 15 113) (concat (_ bv0 64) (_ bv0 64))))) (bvxor @def2 @def1) @def1)))
(assert (let ((_let0 ((_ to_fp 15 113) @def0))) (not (not (fp.eq _let0 _let0)))))
(assert (let ((_let0 ((_ to_fp 15 113) @def1))) (not (not (fp.eq _let0 _let0)))))
(assert (not (fp.eq ((_ to_fp 15 113) (ite (fp.leq ((_ to_fp 15 113) @def3) ((_ to_fp 15 113) @def4)) @def3 @def4)) ((_ to_fp 15 113) (concat (_ bv0 64) (_ bv0 64))))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

