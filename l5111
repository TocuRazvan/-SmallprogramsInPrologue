qsort([],[]).
qsort([X], [X]).
qsort([Head, Pivot|Tail],Sorted):-
        split(Pivot,[Head|Tail],Less,Greater),
        qsort(Less,SortedLess),
        qsort(Greater,SortedGreater),
        append(SortedLess,[Pivot|SortedGreater],Sorted).
