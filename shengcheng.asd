(defsystem "shengcheng"
  :version "0.0.1"
  :author "Lihui Zhang"
  :mailto "zlihui486@gmail.com"
  :license "MIT"
  :homepage "https://github.com/raynei86/shengcheng"
  :depends-on ("cl-markless"
	       "cl-markless-plump"
	       "clack"
               "lass"
	       "spinneret"
	       "str")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "A Static Site Generator that tries to do everything in Common Lisp"
  :in-order-to ((test-op (test-op "shengcheng/tests"))))

(defsystem "shengcheng/tests"
  :author "Lihui Zhang"
  :license "MIT"
  :depends-on ("shengcheng"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for shengcheng"
  :perform (test-op (op c) (symbol-call :rove :run c)))
