%elim(+El,+Lista,-ListaRez)
elim(X,[X|Rest],Rest).
elim(X,[Y|Rest],[Y|Rest1]):-elim(X,Rest,Rest1).

