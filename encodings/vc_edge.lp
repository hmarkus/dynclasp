{ in(X) } :- edge(X,_).
{ in(X) } :- edge(_,X).
:- edge(X,Y), not in(X), not in(Y).
#minimize{ 1,X : in(X) }.

