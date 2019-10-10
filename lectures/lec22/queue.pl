setup(q(X,X)).
enter(A, q(X,Y), q(X,Z)) :- Y = [A | Z].
leave(A, q(X,Z), q(Y,Z)) :- X = [A | Y].
wrapup(q([],[])).
