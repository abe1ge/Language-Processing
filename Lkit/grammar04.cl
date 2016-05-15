(build-grammar
 '(   
   (s1 (S -> NP VP ?PP)
       (NP)
       (VP)
       (PP)
       )
   
   (s2 (S -> PVA *PP)
       (PVA *.PP)
       )
   
   (s2 (S -> S !and S)
       (*.S)
       )
   
   (np (NP -> ?det noun)
       (noun.sems)
       )
   
   (pva (PVA -> pronoun verb)
        (glitch no-agreement
                if not pronoun.person $* verb.person)
        ((pronoun.sems) (verb.sems))
        ;; (tags . (lisp ($* pronoun.person verb.person)))
        )
   
   (npp (NP -> NP PP)
        (NP PP)
        )
   
   (vp (VP -> verb NP)
       
       (verb.sems NP)
       )
          
   (vpp (VP -> verb PP)
        (verb.sems PP)
        )
   
   (pp (PP -> prep ?det noun)
       (fail if not prep.tags $* noun.tags)
       (noun.sems)
       ;;(tags . (lisp ($* prep.tags noun.tags)))
       )
   ))




(parse 'S '(we travelled to Paris in the Summer))

(parse 'S '(we travels to Paris on holiday))

(parse 'S '(we travelled to Paris on Eurostar))

(parse 'S '(we travel to Paris on holiday))





