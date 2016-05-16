
(build-lexicon
 '((We         pronoun     (sems . (actor we)))
   (travelled  verb        (sems . (action travel)))
   (to         prep        (sems . *to*)) 
   (Paris      noun        (sems . (location Paris)))  
   (in         prep        (sems . *in*))
   (on         prep        (sems . *on*))
   (the        det         (sems . specific))
   (summer     noun        (sems . (season Summer)))
   (holiday    noun        (sems . (destination holiday)))
   (Eurostar   noun        (sems . (transportation Eurostar)))
   ))


(build-grammar
 '(    
   (sentence (S -> PVA *PP)
              (PVA *.PP))
   
   (pvg  (PVA -> pronoun verb)
        (pronoun.sems)
        (verb.sems))   
 
   (pp (PP -> prep ?det noun)
       (noun.sems))
   ))


(parse 'S '(We travelled to Paris in the summer))

(parse 'S '(We travelled to Paris on holiday))

(parse 'S '(We travelled to Paris on Eurostar))