(build-grammar
 '(   
   (s1 (S -> NP VP ?PP))
   
   (np (NP -> ?det noun))
   
   (np2 (NP -> pronoun))
   
   (npp (NP -> NP PP))
   
   (vp (VP -> verb NP))
          
   (vpp (VP -> verb PP))
   
   (pp (PP -> prep NP))

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