quicksort([X|Xs],Ys):-partition(Xs,X,Stanga,Dreapta),
    quicksort(Stanga,Ls),
    quicksort(Dreapta,Rs),
    append(Ls,[X|Rs],Ys).
quicksort([],[]).
partition([X|Xs],Y,[X|Ls],Rs):-X<=Y,partitie(Xs,Y,Ls,Rs).
partition([X|Xs],Y,,Ls,[X|Ls]):-X>Y,partitie(Xs,Y,Ls,Rs).
partition([],Y,[],[]).
append([],Ys,Ys).
append(X|Xs],Ys,]X|Zs]):-append(Xs,Ys,Zs).

