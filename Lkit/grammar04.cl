(build-grammar
 '(   
   (s1 (S -> NP VP ?PP)
       (actor NP)
       (action VP)
       (destination PP)
       )
   
   (s2 (S -> PP)
       (PP)
       )
   
   (np (NP -> ?det noun)
       (sems . noun)
       )
   
   (np2 (NP -> pronoun)
        (first pronoun)
        )
   
   (npp (NP -> NP PP)
        (NP) (PP)
        )
   
   (vp (VP -> verb NP)
       (first verb)
       (sems . NP)
       )
          
   (vpp (VP -> verb PP)
        (sems . verb)
        (sems . PP)
        )
   
   (pp (PP -> prep noun)
       (glitch no-agreement
               if not prep.tags $* noun.tags)
       (sems . noun)
       ;; (tags . (lisp ($* prep.tags noun.tags)))
       )
   ))



(build-grammar
 '(   
   (s1 (S -> NP VP))
   (np (NP -> N ?PP))
   (mod (Mod -> ?art ?adj))
   (vp1 (VP -> V ?ADV))
   (vp2 (VP -> Aux V))
   (v1  (V -> Vi))
   (v2  (V -> Vt NP))
   (v3  (V -> Vc + Adj))
   (v4  (V -> Vc + NP))
   (pp  (PP -> 

   ))

(WE TRAVELLED TO PARIS ON EUROSTAR) 