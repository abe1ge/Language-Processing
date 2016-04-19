(build-grammar
 '((s1 (S -> VP NP ?PP ?DP)
       (action . VP)
       (location . NP)
       (if PP
           (season . PP))
       (if DP
           (DP))
       )
   (s2 (S -> PP VP NP ?DP)
       (if PP
           (season . PP))
       (action . VP)
       (location . NP)
       (if DP
           (DP)))
       
   (vp (VP -> determiner verb)
       (determiner.sems verb.sems))
   
   (np (NP -> prep noun)
       (prep.sems noun.sems))
   
   (pp (PP -> prep DP)
       (prep.sems DP))
   
   (dp (DP -> ?determiner *adj noun)
       (if adj (*.adj.sems))
       (if determiner
           (determiner.sems))
       (noun.sems))
   
   ))

