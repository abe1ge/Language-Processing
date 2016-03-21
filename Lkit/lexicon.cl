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
'((s1 (sentence -> noun-phrase verb-phrase))
(np (noun-phrase -> determiner noun))
(vp (verb-phrase -> verb noun-phrase))
))

(build-grammar
'((s2 (sentence -> 
 (np (noun-phrase -> determiner noun))
 (vp (verb-phrase -> verb noun-phrase))
))

