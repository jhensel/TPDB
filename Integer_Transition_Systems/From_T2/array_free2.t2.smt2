(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(declare-const l7 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7))

(define-fun cfg_init ( (pc Loc) (src Loc) (rel Bool) ) Bool
  (and (= pc src) rel))

(define-fun cfg_trans2 ( (pc Loc) (src Loc)
                         (pc1 Loc) (dst Loc)
                         (rel Bool) ) Bool
  (and (= pc src) (= pc1 dst) rel))

(define-fun cfg_trans3 ( (pc Loc) (exit Loc)
                         (pc1 Loc) (call Loc)
                         (pc2 Loc) (return Loc)
                         (rel Bool) ) Bool
  (and (= pc exit) (= pc1 call) (= pc2 return) rel))

(define-fun init_main ( (pc^0 Loc) (i1^0 Int) ) Bool
  (cfg_init pc^0 l7 true))

(define-fun next_main (
                 (pc^0 Loc) (i1^0 Int)
                 (pc^post Loc) (i1^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (= i1^post (+ 1 i1^0)))
    (cfg_trans2 pc^0 l2 pc^post l0 (= i1^0 i1^post))
    (cfg_trans2 pc^0 l3 pc^post l2 (= i1^0 i1^post))
    (cfg_trans2 pc^0 l3 pc^post l0 (= i1^0 i1^post))
    (cfg_trans2 pc^0 l3 pc^post l2 (= i1^0 i1^post))
    (cfg_trans2 pc^0 l4 pc^post l5 (and (<= 42 (+ 0 i1^0)) (= i1^0 i1^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (<= (+ 1 i1^0) 42) (= i1^0 i1^post)))
    (cfg_trans2 pc^0 l1 pc^post l4 (= i1^0 i1^post))
    (cfg_trans2 pc^0 l6 pc^post l1 (= i1^post 0))
    (cfg_trans2 pc^0 l7 pc^post l6 (= i1^0 i1^post))
  )
)
