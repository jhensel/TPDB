%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
%query: fact(f,g).
fact(X,Y) :- 0 =< X, X =< 1, Y = 1.
fact(X,Y) :- X >= 2, fact(X-1, Y1), Y is Y1*X.
