(build-lexicon
 '((we         pronoun      (sems . (actor we))                 (tags done)                      (numb . plur))                  
   (I          pronoun      (sems . (actor I))                  (tags done)                      (numb . sing))
   (He         pronoun      (sems . (actor He))                 (tags done))
   
   (travelled  verb         (sems . (action travel))            (tags past going method))
   (travel     verb         (sems . (action travel))            (tags todo going method))
   (travels    verb         (sems . (action travel))            (tags todo going method))
   
   (to         prep         (sems . *to*)                       (tags going location))
   (by         prep         (sems . *by*)                       (tags trans method)              (numb . sing))
   (in         prep         (sems . *in*)                       (tags time location general))
   (the        det          (sems . specific)                   (tags general time trans))
   (on         prep         (sems . *on*)                       (tags general))
   (holiday    noun         (sems . (destination holiday))      (tags location general)          (numb . sing))
   (Summer     noun         (sems . (season Summer))            (tags time))
   (Paris      noun         (sems . (location Paris))           (tags place location cheese))
   (Eurostar   noun         (sems . (transportation Eurostar))  (tags trans)                     (numb . sing))
   (train      noun         (sems . (transportation Train))     (tags trans)                     (numb . sing))
   (trains     noun         (sems . (transportation Trains))    (tags trans)                     (numb . plur))
     ))


(build-lexicon
 '((We         pronoun      (sems . (actor We))                 (tags done)                    (person first)) 
   (He         pronoun      (sems . (actor He))                 (tags done)                    (person second))
   
   (travelled  verb         (sems . (action travel))            (tags past going method)       (person first second third))
   (travel     verb         (sems . (action travel))            (tags todo going method)       (person first third))
   (travels    verb         (sems . (action travel))            (tags todo going method)       (person second))
   
   (to         prep         (sems . *to*)                       (tags going location))
   
   (Paris      noun         (sems . (location Paris))           (tags place location cheese))
   
   (in         prep         (sems . *in*)                       (tags time location general))
   
   (on         prep         (sems . *on*)                       (tags general))
    
   (the        det          (sems . specific)                   (tags general time trans))

   
   (Summer     noun         (sems . (season Summer))            (tags time))
   
   (holiday    noun         (sems . (destination holiday))      (tags location general)          (numb . sing))
   
   (Eurostar   noun         (sems . (transportation Eurostar))  (tags trans)                     (numb . sing))
   
   (train      noun         (sems . (transportation Train))     (tags trans)                     (numb . sing))
   (trains     noun         (sems . (transportation Trains))    (tags trans)                     (numb . plur))
   
   ))



