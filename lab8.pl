% Lab 8 - Lists, Part II

% Task 1: Remove every occurrence of X.
deleteElement(_, [], []).
deleteElement(X, [X|Tail], Result) :-
    deleteElement(X, Tail, Result).
deleteElement(X, [Head|Tail], [Head|Result]) :-
    dif(X, Head),
    deleteElement(X, Tail, Result).

% ?- deleteElement(1, [1,2,1,4,3,4,1,1,1,3,4,2,1,1,1], R).
% R = [2,4,3,4,3,4,2].
% ?- deleteElement(3, [1,3,2], R).
% R = [1,2].

% Task 2: Add X at the end of the list.
add_at_the_end(X, [], [X]).
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).

% ?- add_at_the_end(4, [1,2,3], R).
% R = [1,2,3,4].
% ?- add_at_the_end(c, [a,b], R).
% R = [a,b,c].
