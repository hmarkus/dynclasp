vertex(X) :- edge(X, _).
vertex(X) :- edge(_, X).

{ in(X) : vertex(X) }.
dominated(X) :- in(Y), edge(Y,X).
:- vertex(X), not in(X), not dominated(X).
#minimize { 1,X : in(X) }.
#show in/1.
