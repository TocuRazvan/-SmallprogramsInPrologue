%leul minte luni,marti,mieruci
minte(leul, luni).
minte(leul, marti).
minte(leul, miercuri).

% unicornul minte joi,vineri,sambata
minte(unicorn, joi).
minte(unicorn, vineri).
minte(unicorn, sambata).

ieri(luni, duminica).
ieri(marti, luni).
ieri(miercuri, marti).
ieri(joi, miercuri).
ieri(vineri, joi).
ieri(sambata, vineri).
ieri(duminica, sambata).
% pentru fiecare animal,fie ca spune adevarul sau minte,daca a mintiti
% ieri sau azi
problem(Z, I) :-
    minte(leul, I), not(minte(leul, Z)),
    minte(unicorn, I), not(minte(unicorn, Z)).
problem(Z, I) :-
    not(minte(leul, I)),minte(leul, Z),
    minte(unicorn, I), not(minte(unicorn, Z)).
problem(Z, I) :-
    not(minte(leul, I)), minte(leul, Z),
    not(minte(unicorn, I)), minte(unicorn, Z).
problem(Z, I) :-
    minte(leul, I), not(minte(leul, Z)),
    not(minte(unicorn, I)), minte(unicorn, Z).

main :-
    ieri(Z, I),
    problem(Z, I),
    write(Z).
