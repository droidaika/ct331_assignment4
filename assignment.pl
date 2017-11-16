%Definitions for isElementInList(El, List)

isElementInList(X,[X|_]).

isElementInList(X,[_|T]):-
			isElementInList(X,T).



%Definitions for reverseList(List, ReversedList)

%base case
reverseList([],Z,Z).

 reverseList([H|T],Z,Acc) :- 
    reverseList(T,Z,[H|Acc]).


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
    


