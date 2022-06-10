;; NOTE: Assertions have been generated by update_lit_checks.py --all-items and should not be edited.

;; RUN: wasm-opt --new-wat-parser -all %s -S -o - | filecheck %s

(module $parse

 ;; globals
 (global $g1 (export "g1") (export "g1.1") (import "mod" "g1") i32)
 (global $g2 (import "mod" "g2") (mut i64))

)
;; CHECK:      (import "mod" "g1" (global $g1 i32))

;; CHECK:      (import "mod" "g2" (global $g2 (mut i64)))

;; CHECK:      (export "g1" (global $g1))

;; CHECK:      (export "g1.1" (global $g1))