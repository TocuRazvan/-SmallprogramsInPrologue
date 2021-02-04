resolve(N):-hanoi(N,stanga,centru,dreapta).
hanoi(0,X,Y,Z).
hanoi(N,X,Y,Z):-N>0,
N1 is N-1,
hanoi(N1,X,Z,Y),
    write('Din'), write(X), write('pe '), write(Y),nl,
    hanoi(N1,Z,Y,X).
