(defsystem "shengcheng"
  :version "0.0.1"
  :author "Lihui Zhang"
  :mailto "zlihui486@gmail.com"
  :license "MIT"
  :depends-on ("cl-markless"
               "clack"
               "lass"
	       "spinneret"
	       "cl-markless-plump"
	       "alexandria"
	       "str")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "My personal static site generator"
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
