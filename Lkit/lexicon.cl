(build-lexicon
`((a determiner )
  (cat noun )
  (mouse noun)
(chased verb )
(dog noun )
(the determiner )
))

(build-grammar
'((s1 (sentence -> noun-phrase verb-phrase))
(np (noun-phrase -> determiner noun))
(vp (verb-phrase -> verb noun-phrase))
))


