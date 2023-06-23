mother(kim,holly).
mother(holly,margaret).
mother(kim,esther).
mother(esther,jean).

sister(X,Y) :-
    mother(P,X), mother(P,Y), not(X=Y).

firstPair(X) :-
    X = [Y,Y | Z].

evenSize([]).
evenSize([_,_|Y]) :-
    evenSize(Y),!.

prefix([],_).
prefix([X|Y],[X|Z]) :-
    prefix(Y,Z).
    
isMember(X,[X|_]_).
isMember(X,[_|Y]) :-
    isMember(X,Y).
