euclid(A, 0, Z) :- Z is A.
euclid(A, B, Z) :- B > A, euclid(B, A, Z).
euclid(A, B, Z) :- X is A mod B, euclid(B, X, Z).
cmmdc(A, B, Z) :- euclid(A, B, Z).
