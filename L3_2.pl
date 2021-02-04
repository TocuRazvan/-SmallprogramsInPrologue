% liniar(+Lista,ListaLiniarizata)
liniar([] , []).
liniar([[ ] | Rest], Rez) :- liniar(Rest, Rez).
liniar([X | Rest], [X | Rez]) :- X \= [], X \= [ _ | _ ], liniar(Rest, Rez).
liniar([[X | Rest] | RestList], Rez) :- liniar([X, Rest | RestList], Rez).
