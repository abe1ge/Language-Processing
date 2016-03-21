
;------------------------------------------------------------------
; tailored breadth search for applying operators, do not edit
;------------------------------------------------------------------
; this version is an optimised form of previous versions


;; basic breadth first search mechanism using ops
;; @args start start state
;; @args goal  minimally specified
;; @args ops   set of operators (may use matcher)
;; @args world constant (unchanging) tuples describing the world
;; @args debug prints some information


(defun ops-search (start goal ops &key world debug)
  "GPS operators breadth search"
  (let ((ready   `( (((path) ,@start)) ))
        (visited `( ,start ))
        )
    (do () ((null ready) nil)                      ;; fail if (null ready)
      (let* ((next  (pop ready))                    ;; select next node
             (state (first next))              ;; filter out old moves
             (moves (mops-lmg ops state :world world))
             )
        (loop for m in moves
            for ms = (rest m)     ;; the state part
            doing
              (when debug 
                (format t "~%exploring ~a~%     from ~a~%      via ~a~%"
                  ms m next))
              (if ($>= ms goal)                       ;; goal found
                  (return-from ops-search (cons m next)))                         ;; quit with result
              (when (not (member ms visited :test #'$=))
                (push ms visited)
                (setf ready (nconc ready (list (cons m next))))
                ))
        ))
    ))


(defun state-eq (a b)
  ($= (rest a)
      (rest b)
      ))

;------------------------------------------------------------------
; stuff for applying operators, do not edit
;------------------------------------------------------------------

(defun mops-lmg (mops state &key world)
  (let ((ops (mapcar #'car mops)))
    (reduce #'append
            (mapcar #'(lambda (op)
                        (apply-mop (-> mops op) state :world world))
              ops)
            )))
 
(defun apply-mop (op state &key world)
  (forevery ((-> op 'pre) ($+ world state))
            (let* ((txt (match>> (-> op 'txt)))
                   (add (match>> (-> op 'add)))
                   (del (match>> (-> op 'del)))
                   (path (-> state 'path))
                   (new  ($+ add ($- state del)))
                   )
              (if* (or path txt)
                 then `((path ,@path ,txt)
                        ,@(remove 'path new :key #'car))
                 else new)
              ))
    )

; configure set utils properly
(setf *$test-fn* #'equal)


