; start Bitwuzla query
(set-logic QF_ABV)
(declare-const a00 (Array (_ BitVec 32) (_ BitVec 8)))
(assert (not (not (bvsle (concat (select a00 (_ bv7 32)) (concat (select a00 (_ bv6 32)) (concat (select a00 (_ bv5 32)) (concat (select a00 (_ bv4 32)) (concat (select a00 (_ bv3 32)) (concat (select a00 (_ bv2 32)) (concat (select a00 (_ bv1 32)) (select a00 (_ bv0 32))))))))) (_ bv8 64)))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABV)
(declare-const a00 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ BitVec 64) (concat (select a00 (_ bv7 32)) (concat (select a00 (_ bv6 32)) (concat (select a00 (_ bv5 32)) (concat (select a00 (_ bv4 32)) (concat (select a00 (_ bv3 32)) (concat (select a00 (_ bv2 32)) (concat (select a00 (_ bv1 32)) (select a00 (_ bv0 32))))))))))
(assert (bvsle @def0 (_ bv8 64)))
(assert (not (not (bvsle (_ bv0 64) @def0))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABV)
(declare-const a00 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ BitVec 64) (concat (select a00 (_ bv7 32)) (concat (select a00 (_ bv6 32)) (concat (select a00 (_ bv5 32)) (concat (select a00 (_ bv4 32)) (concat (select a00 (_ bv3 32)) (concat (select a00 (_ bv2 32)) (concat (select a00 (_ bv1 32)) (select a00 (_ bv0 32))))))))))
(assert (bvsle @def0 (_ bv8 64)))
(assert (bvsle (_ bv0 64) @def0))
(assert (not (bvslt (_ bv0 64) @def0)))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABV)
(declare-const a00 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ BitVec 64) (concat (select a00 (_ bv7 32)) (concat (select a00 (_ bv6 32)) (concat (select a00 (_ bv5 32)) (concat (select a00 (_ bv4 32)) (concat (select a00 (_ bv3 32)) (concat (select a00 (_ bv2 32)) (concat (select a00 (_ bv1 32)) (select a00 (_ bv0 32))))))))))
(assert (bvsle @def0 (_ bv8 64)))
(assert (bvsle (_ bv0 64) @def0))
(assert (bvslt (_ bv0 64) @def0))
(assert (not (= (_ bv112 64) (concat ((_ extract 59 0) @def0) (_ bv0 4)))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABV)
(declare-const a00 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ BitVec 64) (concat (select a00 (_ bv7 32)) (concat (select a00 (_ bv6 32)) (concat (select a00 (_ bv5 32)) (concat (select a00 (_ bv4 32)) (concat (select a00 (_ bv3 32)) (concat (select a00 (_ bv2 32)) (concat (select a00 (_ bv1 32)) (select a00 (_ bv0 32))))))))))
(define-const @def1 (_ BitVec 64) (concat ((_ extract 59 0) @def0) (_ bv0 4)))
(assert (bvsle @def0 (_ bv8 64)))
(assert (bvsle (_ bv0 64) @def0))
(assert (bvslt (_ bv0 64) @def0))
(assert (not (= (_ bv112 64) @def1)))
(assert (not (= (_ bv48 64) @def1)))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABV)
(declare-const a00 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ BitVec 64) (concat (select a00 (_ bv7 32)) (concat (select a00 (_ bv6 32)) (concat (select a00 (_ bv5 32)) (concat (select a00 (_ bv4 32)) (concat (select a00 (_ bv3 32)) (concat (select a00 (_ bv2 32)) (concat (select a00 (_ bv1 32)) (select a00 (_ bv0 32))))))))))
(define-const @def1 (_ BitVec 64) (concat ((_ extract 59 0) @def0) (_ bv0 4)))
(assert (bvsle @def0 (_ bv8 64)))
(assert (bvsle (_ bv0 64) @def0))
(assert (bvslt (_ bv0 64) @def0))
(assert (not (= (_ bv112 64) @def1)))
(assert (not (not (bvult (_ bv2147483648 64) @def1))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

