max(X,Y,Z):-
    (X >= Y, Z is X, !);
    Z is Y.

maxList([],M,M):- true.
maxList([X|Xs],M0,M):-
    X>M0,
    maxList(Xs,X,M).
maxList([X|Xs],M0,M):-
    X=<M0,
    maxList(Xs,M0,M).
maxList([X|Xs],M):-
    maxList(Xs,X,M).

ordered([]):- true.
ordered([_]):- true.
ordered([X,Y|Xs]):-
    X=<Y,
    ordered([Y|Xs]).

sum([],0).
sum([X|Xs],Y):-
    sum(Xs,Xss),
    Y is X+Xss.

subsequence([],[]).
subsequence([X|Xs],[X|Xr]):-
    subsequence(Xs,Xr).
subsequence(X,[_|Xr]):-
    subsequence(X,Xr).

subsetsum(L,Sum,SubL):-
    subseq(SubL,L),
    sum(SubL,Ttl),
    Ttl=:=Sum.
