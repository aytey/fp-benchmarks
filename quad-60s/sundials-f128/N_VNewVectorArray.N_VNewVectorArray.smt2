; start Bitwuzla query
(set-logic ALL)
(assert (not false))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABV)
(declare-const a00 (Array (_ BitVec 32) (_ BitVec 8)))
(assert (not (= (_ bv0 64) (concat ((_ extract 60 0) ((_ sign_extend 32) (concat (select a00 (_ bv3 32)) (concat (select a00 (_ bv2 32)) (concat (select a00 (_ bv1 32)) (select a00 (_ bv0 32))))))) (_ bv0 3)))))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABV)
(declare-const a00 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ BitVec 64) (concat ((_ extract 60 0) ((_ sign_extend 32) (concat (select a00 (_ bv3 32)) (concat (select a00 (_ bv2 32)) (concat (select a00 (_ bv1 32)) (select a00 (_ bv0 32))))))) (_ bv0 3)))
(assert (not (= (_ bv0 64) @def0)))
(assert (not (= (_ bv18446744073709551608 64) @def0)))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

; start Bitwuzla query
(set-logic QF_ABV)
(declare-const a00 (Array (_ BitVec 32) (_ BitVec 8)))
(define-const @def0 (_ BitVec 64) (concat ((_ extract 60 0) ((_ sign_extend 32) (concat (select a00 (_ bv3 32)) (concat (select a00 (_ bv2 32)) (concat (select a00 (_ bv1 32)) (select a00 (_ bv0 32))))))) (_ bv0 3)))
(assert (not (= (_ bv0 64) @def0)))
(assert (not (bvult (_ bv2147483648 64) @def0)))
(check-sat)
(exit)
(exit)
; end Bitwuzla query

