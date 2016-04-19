(build-grammar
 '((s1 (sentence -> noun-phrase verb-phrase preposition-phrase)
       (action . noun-phrase)
       (location . verb-phrase)
       (season . preposition-phrase))
   
   (s2 (sentence -> noun-phrase verb-phrase determiner-phrase)
       (action . noun-phrase)
       (location . verb-phrase)
       (destination . determiner-phrase))
   
   (s3 (sentence -> noun-phrase verb-phrase preposition-phrase determiner-phrase)
       (action . noun-phrase)
       (location . verb-phrase)
       (season . preposition-phrase)
       (destination . determiner-phrase))
   
   (np (noun-phrase -> determiner verb)
       (determiner.sems verb.sems))
   
   (vp (verb-phrase -> prep noun)
       (prep.sems noun.sems))
   
   (pp (preposition-phrase -> prep determiner-phrase)
       (prep.sems determiner-phrase))
   
   (dp (determiner-phrase -> determiner noun)
       (determiner.sems noun.sems))
))


