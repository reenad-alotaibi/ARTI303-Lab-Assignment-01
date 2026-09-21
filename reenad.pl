male(mohammed).
male(meshal).
female(muneera).
female(noura).
female(reenad).

parent(mohammed,meshal).
parent(mohammed,noura).
parent(mohammed,reenad).

parent(muneera,meshal).
parent(muneera,noura).
parent(muneera,reenad).

father(X,Y):-
    male(X),
    parent(X,Y).

mother(X,Y):-
    female(X),
    parent(X,Y).

sister(X,Y):-
    female(X),
    parent(P,X),
    parent(P,Y),
    X \= Y.

brother(X,Y):-
    male(X),
    parent(P,X),
    parent(P,Y),
    X \= Y.






