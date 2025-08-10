(defpackage shengcheng/tests/main
  (:use :cl
        :shengcheng
        :rove))
(in-package :shengcheng/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :shengcheng)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
