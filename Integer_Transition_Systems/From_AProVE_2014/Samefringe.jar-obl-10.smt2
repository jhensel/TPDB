(declare-sort Loc 0)
(declare-const f193_0_createTree_Return Loc)
(declare-const f295_0_main_InvokeMethod Loc)
(declare-const f1_0_main_Load Loc)
(declare-const f2344_0_main_InvokeMethod Loc)
(declare-const f511_0_createTree_Return Loc)
(declare-const f2354_0_main_InvokeMethod Loc)
(declare-const f512_0_createTree_Return Loc)
(declare-const f551_0_random_ArrayAccess Loc)
(declare-const f2326_0_createTree_LE Loc)
(declare-const f1431_0_samefringe_NULL Loc)
(declare-const f1838_0_gopher_NULL Loc)
(declare-const __init Loc)
(assert (distinct f193_0_createTree_Return f295_0_main_InvokeMethod f1_0_main_Load f2344_0_main_InvokeMethod f511_0_createTree_Return f2354_0_main_InvokeMethod f512_0_createTree_Return f551_0_random_ArrayAccess f2326_0_createTree_LE f1431_0_samefringe_NULL f1838_0_gopher_NULL __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int)
             ) Bool
  (or
    (cfg_trans2 pc f193_0_createTree_Return pc1 f295_0_main_InvokeMethod (and (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f295_0_main_InvokeMethod (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)))
    (cfg_trans2 pc f1_0_main_Load pc1 f2344_0_main_InvokeMethod (and (and (and (>= arg1 arg1P) (> arg1 0)) (> arg1P 0)) (> arg2P 0)))
    (cfg_trans2 pc f511_0_createTree_Return pc1 f2344_0_main_InvokeMethod (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= (+ arg1P 1) arg2)) (<= arg2P arg2)) (> arg1 0)) (> arg2 1)) (> arg1P 0)) (> arg2P 1)) (<= (+ arg4 2) arg2)) (= arg3 arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f295_0_main_InvokeMethod pc1 f2354_0_main_InvokeMethod (and (and (and (and (<= arg1P arg1) (> arg2 0)) (> arg1 0)) (> arg1P 0)) (> arg2P 0)))
    (cfg_trans2 pc f512_0_createTree_Return pc1 f2354_0_main_InvokeMethod (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= (+ arg1P 1) arg2)) (<= arg2P arg2)) (> arg1 0)) (> arg2 1)) (> arg1P 0)) (> arg2P 1)) (<= (+ arg3 2) arg2)) (= arg3 arg3P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f551_0_random_ArrayAccess (and (> arg1 0) (> arg2 (- 1))))
    (cfg_trans2 pc f295_0_main_InvokeMethod pc1 f551_0_random_ArrayAccess (exists ((x35 Int)) (and (and (> x35 (- 1)) (> arg2 0)) (> arg1 0))))
    (cfg_trans2 pc f2344_0_main_InvokeMethod pc1 f551_0_random_ArrayAccess (exists ((x38 Int)) (and (and (and (> arg1 0) (> x38 (- 1))) (> arg2 0)) (<= (+ arg4 2) arg2))))
    (cfg_trans2 pc f551_0_random_ArrayAccess pc1 f2326_0_createTree_LE (exists ((x43 Int)) (and (and (and (and (> arg3P 0) (> x43 (- 1))) (> arg2P 1)) (> arg1P 1)) (= (+ x43 1) arg4P))))
    (cfg_trans2 pc f2326_0_createTree_LE pc1 f2326_0_createTree_LE (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 0)) (<= arg1P arg1)) (<= (+ arg2P 2) arg2)) (> arg1 0)) (> arg2 2)) (> arg1P 0)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P)))
    (cfg_trans2 pc f2326_0_createTree_LE pc1 f2326_0_createTree_LE (exists ((x59 Int)) (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> x59 0)) (> arg4 (- 1))) (<= arg1P arg1)) (<= (+ arg2P 2) arg2)) (> arg1 0)) (> arg2 2)) (> arg1P 0)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P))))
    (cfg_trans2 pc f2326_0_createTree_LE pc1 f2326_0_createTree_LE (exists ((x66 Int)) (and (and (and (and (and (and (and (and (> arg3 0) (> x66 0)) (> arg4 (- 1))) (> arg1 0)) (> arg2 1)) (> arg1P 0)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P))))
    (cfg_trans2 pc f2326_0_createTree_LE pc1 f2326_0_createTree_LE (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 0)) (> arg1 0)) (> arg2 1)) (> arg1P 0)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P)))
    (cfg_trans2 pc f2326_0_createTree_LE pc1 f2326_0_createTree_LE (and (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 0)) (<= (- arg1P 2) arg1)) (<= (- arg1P 2) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 2) arg2)) (> arg1 1)) (> arg2 1)) (> arg1P 3)) (> arg2P 3)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P)))
    (cfg_trans2 pc f2326_0_createTree_LE pc1 f2326_0_createTree_LE (exists ((x85 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> x85 0)) (> arg4 (- 1))) (<= (- arg1P 2) arg1)) (<= (- arg1P 2) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 2) arg2)) (> arg1 1)) (> arg2 1)) (> arg1P 3)) (> arg2P 3)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P))))
    (cfg_trans2 pc f295_0_main_InvokeMethod pc1 f1431_0_samefringe_NULL (exists ((x92 Int)) (and (and (and (and (and (and (and (and (> x92 0) (> arg2 0)) (<= (+ arg1P 1) arg1)) (<= (+ arg2P 1) arg1)) (<= (+ arg3P 1) arg1)) (> arg1 0)) (> arg1P (- 1))) (> arg2P (- 1))) (> arg3P (- 1)))))
    (cfg_trans2 pc f2354_0_main_InvokeMethod pc1 f1431_0_samefringe_NULL (and (and (and (and (and (and (and (and (and (and (<= (+ arg1P 1) arg1) (<= (+ arg1P 1) arg2)) (<= arg2P arg2)) (<= (+ arg3P 1) arg1)) (<= (+ arg3P 1) arg2)) (> arg1 0)) (> arg2 0)) (> arg1P (- 1))) (> arg2P 0)) (> arg3P (- 1))) (<= (+ arg3 2) arg2)))
    (cfg_trans2 pc f2344_0_main_InvokeMethod pc1 f1431_0_samefringe_NULL (exists ((x108 Int)) (and (and (and (and (and (and (and (and (and (and (<= arg1P arg2) (> x108 0)) (<= (+ arg2P 1) arg1)) (<= (+ arg2P 1) arg2)) (<= arg3P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P (- 1))) (> arg3P 0)) (<= (+ arg4 2) arg2))))
    (cfg_trans2 pc f2344_0_main_InvokeMethod pc1 f1431_0_samefringe_NULL (and (and (and (and (and (and (and (<= arg1P arg2) (<= arg3P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (> arg3P 0)) (<= (+ arg4 2) arg2)))
    (cfg_trans2 pc f1431_0_samefringe_NULL pc1 f1431_0_samefringe_NULL (and (and (and (and (and (> arg1 0) (> arg2 0)) (> arg3 0)) (> arg1P (- 1))) (> arg2P (- 1))) (> arg3P (- 1))))
    (cfg_trans2 pc f1431_0_samefringe_NULL pc1 f1838_0_gopher_NULL (and (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= arg1P arg3)) (<= arg2P arg1)) (<= arg2P arg3)) (<= (+ arg3P 1) arg1)) (<= (+ arg3P 1) arg3)) (> arg1 0)) (> arg2 0)) (> arg3 0)) (> arg1P 0)) (> arg2P 0)) (> arg3P (- 1))))
    (cfg_trans2 pc f1431_0_samefringe_NULL pc1 f1838_0_gopher_NULL (and (and (and (and (and (and (and (and (<= arg1P arg2) (<= arg2P arg2)) (<= (+ arg3P 1) arg2)) (> arg1 0)) (> arg2 0)) (> arg3 0)) (> arg1P 0)) (> arg2P 0)) (> arg3P (- 1))))
    (cfg_trans2 pc f1838_0_gopher_NULL pc1 f1838_0_gopher_NULL (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= (- arg2P 2) arg2)) (<= (+ arg3P 3) arg2)) (<= (+ arg3P 1) arg3)) (> arg1 0)) (> arg2 2)) (> arg3 0)) (> arg1P 0)) (> arg2P 2)) (> arg3P (- 1))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
