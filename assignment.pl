%Definitions for isElementInList(El, List)

isElementInList(X,[X|_]).

isElementInList(X,[_|T]):-
			isElementInList(X,T).



%Definitions for reverseList(List, ReversedList)

%base case
reverseList([],[]).

reverseList([H|T], L):-
    reverseList(T,Y),
    mergeLists(Y,[H],L).


%insertElementIntoListEnd(El, List, NewList)
%base case 
insertElementIntoListEnd(X,[],[X]).
insertElementIntoListEnd(X,[H|T],[H|L]):-
    insertElementIntoListEnd(X,T,L).

%Definitions for mergeLists(List1, List2, Merged)
%base case

mergeLists([], List, List).

mergeLists([Top|Tail],L,[Top|Bottom]):-
    mergeLists(Tail, L, Bottom).
    


