setup(s(X,X)).
enter(A, s(X,Z), s(Y,Z)) :- Y = [A | X].
leave(A, s(X,Z), s(Y,Z)) :- X = [A | Y].
wrapup(s([],[])).
