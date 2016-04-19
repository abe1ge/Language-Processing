

(build-grammar
 '(;;(s1 (sentence -> verb-phrase noun-phrase preposition-phrase)
   ;;    (action . verb-phrase)
   ;;    (location . noun-phrase)
   ;;    (season . preposition-phrase))
   
   ;;(s2 (sentence -> verb-phrase noun-phrase determiner-phrase)
     ;;  (action . verb-phrase)
     ;;  (location . noun-phrase)
     ;;  (determiner-phrase))
   
   (s3 (sentence -> verb-phrase noun-phrase ?preposition-phrase ?determiner-phrase)
      ;; (fail if verb-phrase.numb /= determiner-phrase.numb)
       (action . verb-phrase)
       (location . noun-phrase)
       (if preposition-phrase
           (season . preposition-phrase))
       (if determiner-phrase
           (determiner-phrase))
       )
   
   (vp (verb-phrase -> determiner verb)
      ;; (numb . determiner.numb)
       (determiner.sems verb.sems))
   
   (np (noun-phrase -> prep noun)
       (prep.sems noun.sems))
   
   (pp (preposition-phrase -> prep determiner-phrase)
       (prep.sems determiner-phrase))
   
   (dp (determiner-phrase -> determiner noun)
       ;;(numb . noun.numb)
       (determiner.sems noun.sems))
   
))
