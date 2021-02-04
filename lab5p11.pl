qsort([],[]).
qsort([X],[X]).
qsort([Cap,Pivot|Coada],sortat):-
    split(Pivot,[Cap|Coada],mic,mare),
    qsort(mic,sortatmic),
    qsort(mare,sortatmare),
    append(sortatmic,[Pivot|sortatmare],sortat).
