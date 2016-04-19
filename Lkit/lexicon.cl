(build-lexicon
`((a determiner )
  (cat noun )
  (mouse noun)
(chased verb )
(dog noun )
(the determiner )
))

(build-lexicon
'((we determiner)
  (travelled verb)
  (to prep)
  (Paris noun)
  (in prep)
  (the determiner)
  (summer noun)
  ))

(build-grammar
 '((s2 (S -> S PP)
       (fail if not PP.case $<< *verb-legal-cases*)
       S
       (PP.case . PP)
       )
   (s1 (S -> NP VP)
       (actor . NP)
       (action . VP.action)
       (object . VP.object)
       (vcases . VP.vcases)
       )
   (np (NP -> ?det *adj noun)
       (if det
           (quant . det.sems)
         (quant . undefined))
       (if adj (qual . *.adj.sems))
       (object . noun.sems)
       )
   (npp (NP -> NP PP)
        (fail if PP.case $<< *verb-only-cases*)
        (glitch nesting if t) ; glitch always- mark as nested
        NP
        (PP.case . PP)
        )
   (vp (VP -> verb NP)
       (action . verb.sems)
       (object . NP)
       (numb . verb.numb)
       (vcases . verb.cases)
       )
   (pp (PP -> prep NP)
       (case . prep.case)
       (object . NP)
       )
   ))

(build-grammar
'((s1 (sentence -> noun-phrase verb-phrase))
(np (noun-phrase -> determiner verb))
(vp (verb-phrase -> prep noun))
))

