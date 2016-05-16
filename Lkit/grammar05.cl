affixation 


(build-lexicon
 '((we         pronoun   (sems . (actor we))             (person first)) 
   (he         pronoun   (sems . (actor He))             (person second))    
   
   (travelled  verb      (sems . (action travel))        (tags past going conveyance)             (person first second third))
   (travel     verb      (sems . (action travel))        (tags present future going conveyance)   (person first third))
   (travels    verb      (sems . (action travel))        (tags present going conveyance)          (person second))
   
   (in         prep      (sems . *in*)                   (tags time location))
   (the        det       (sems . specific)               (tags time))
   (on         prep      (sems . *on*)                   (tags time2 conveyance))              
   (to         prep      (sems . *to*)                   (tags dest ))
   (by         prep      (sems . *by*)                   (tags time conveyance))
   (Paris      noun      (sems . (location Paris))       (tags location dest))
   (train      noun      (sems . (transport Train))      (tags conveyance))                       
   (summer     noun      (sems . (season summer))        (tags time))
   (Eurostar   noun      (sems . (Transport Eurostar))   (tags trans)                    
   ))



(build-grammar
 '(     
   (s (S -> PVA PP)
       (PVA PP)
      )
   
   (s2 (S -> PP PVA)
       (PP)
       (PVA))
   
   (s3 (S -> S PP)
       (S PP)
       )
   
    (pva (PVA -> pronoun verb)
        (glitch no-agreement
                if not pronoun.person $* verb.person)
        (tags . (lisp ($* pronoun.person verb.person)))
         (pronoun.sems) 
         (verb.sems)
        )

   (np (NP -> ?det noun)
       (noun)
       )

   (vp (VP -> verb NP)
       (verb.sems)
       NP
       )
          
   (pp2 (PP -> prep NP)
        (glitch no-agreement
               if not prep.tags $* NP.tags)
        (tags . (lisp ($* prep.tags NP.tags)))
         (prep.sems)
         (NP.sems))
   ))

   
(parse 'S '(we travelled to Paris in the summer))

(parse 'S '(in the summer we travelled to Paris on the train))

(parse 'S '(we travelled by train to Paris))

(parse 'S '(we are travelling to Paris ))

