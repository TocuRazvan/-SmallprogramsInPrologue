%5
drum(bucuresti,ploiesti).
drum(bucuresti,cheia).
drum(cheia,brasov).
drum(brasov,bucuresti).
drum(cheia,sinaia).
drum(ploiesti,sinaia).
drum(ploiesti,brasov).
membru2(X, [Y | T]) :- X == Y, ! ; membru2(X, T).
traseu(Y, X) :- traseu(X, Y, [X]).
traseu(Y, Y, Traseu) :- write(Traseu), nl.
traseu(X, Y, Traseu) :- (drum(X, Z) ; drum(Z, X)), not(membru2(Z, Traseu)),
    traseu(Z, Y, [Z | Traseu]).
traseu( _ , _ , _ ) :- write('Nu exista traseu.'), nl.
test :-  traseu(bucuresti, sinaia), traseu(sinaia, bucuresti),
    traseu(bucuresti, ploiesti), traseu(ploiesti, bucuresti),
    traseu(cheia, craiova).
