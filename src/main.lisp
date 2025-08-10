(uiop:define-package shengcheng
  (:use #:cl))
(in-package #:shengcheng)

(defparameter *author* "")

(defun initialize ()
  (initialize-file-structure))

(defun initialize-file-structure ()
  (ensure-directories-exist #P"posts/")
  (ensure-directories-exist #P"pages/")
  (ensure-directories-exist #P"template/")
  (ensure-directories-exist #P"public/")
  (ensure-directories-exist #P"static/")
  (str:to-file #P"config.lisp"
	       (format nil "(setf *author* \"\")")))

(defun new-post (title &key tags)
  "Creates a new post"
  (str:to-file (format nil "posts/~a.mess" (str:snake-case title))
	       (format nil "; Title: ~a ~%; Author: ~a ~%; Tags: ~a" title *author* tags)))

(defun new-page (title)
  "Creates a new page"
  (str:to-file (format nil "pages/~a.mess" (str:snake-case title)) ""))
