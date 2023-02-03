grandmother(G,S) :- mother(G,C),
    (   father(C,S);mother(C,S)).


father(anakin,luke).
father(anakin, leia).
mother(shmi,anakin).

persondata(peter, 41, 'Spooner Street', '31', 'Quahog').
persondata(peter, age(41),
           address('Spooner Street', '31', 'Quahog')).

printPlus1(X):- write(X+1).

wert(X).

address(street(X,135),Y).


friend(jim,johnny).
friend(johnny,jose).
friend(jose,jack).
friend(jack,mary).
friend(mary,jim).
friend(jim,jack).

knows(A,B):- friend(A,B).
knows(A,B):- friend(A,C), knows(C,B).


knows(A,B,_):- friend(A,B).
knows(A,B,Visited):- friend(A,C),\+member(C,Visited), knows(C,B,[A|Visited]).

