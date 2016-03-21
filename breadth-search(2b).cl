
;; best first search mechanism
;; based on earlier breadth-1st search
;; @args start start state
;; @args goal either a predicate to take a state determine if it is a goal
;;            or a state equal to the goal
;; @args LMG  legal move generator function which takes one state & returns
;;            a list of states
;; @args selector takes list of states & selects the next one to explore from
;; @args debug prints some information

(defun breadth-search (start goal LMG
                          &key
                          (selector #'first)
                          (filter #'(lambda (x) x))
                          debug)
  "Best first search"
  (let ((ready   `( (,start) ))
        (visited nil)
        )
    (do () ((null ready) nil)                      ;; fail if (null ready)
      (let* ((next (funcall selector ready))       ;; select next node
             (state (first next))                  ;; filter out path
             (raw-state (funcall filter state))    ;; filter costs, etc
             )
        (if (if* (functionp goal)                  ;; is goal a predicate
               then (funcall goal raw-state)       ;; goal found
               else (equal raw-state goal))        ;; goal found
            (return next))                         ;; quit with result
        (setf ready (remove next ready :test #'equal))
        (when (not (member raw-state visited :test #'equal))
          (push raw-state visited)
          (let ((moves (funcall LMG state))) 
            (when debug 
              (format t "~%exploring ~a~%     path ~a~%    moves ~a~%"
                state next moves))
            (setf ready
              (append ready
                      (mapcar #'(lambda (x) (cons x next))
                        (remove-if #'(lambda(x) 
                                       (member (funcall filter x) visited
                                               :test #'equal))
                                   moves)
                        )))
            ))
        ))
    ))


