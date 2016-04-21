(build-grammar
 '((s3 (S -> S !and S)
       (conjunction . *.S)
       )
   (s1 (S -> VP NP($npa) *DP ?PP ?NP($npb))
       (action . VP)
       (location . $npa)
       (if DP
           (*.DP))
       (if PP
           (season . PP)) 
       (if $npb
           $npb)
       )
   (s2 (S -> PP VP NP ?DP)
       (if PP
           (season . PP))
       (action . VP)
       (location . NP)
       (if DP
           (DP)))
   (s4 (S -> noun PP *DP *NP)
       (location . noun)
       (season . PP)
       (if DP
       (DP))
       (if NP
       (*.NP)))
       
   (vp (VP -> determiner verb)
       (determiner.sems verb.sems))
   
   (np (NP -> prep noun)
       (prep.sems noun.sems))
   
   (pp (PP -> prep DP)
       (prep.sems DP))
   
   (dp (DP -> *determiner *adj noun)
       (if adj (*.adj.sems))
       (if determiner
           (*.determiner.sems))
       (noun.sems))
   
   ))


