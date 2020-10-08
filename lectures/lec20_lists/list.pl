append([],L2,L2).
append([H | T1], L2, [H | L]) :- append(T1, L2, L).

prefix(X,Z) :- append(X,Y,Z).
suffix(Y,Z) :- append(X,Y,Z).

last([H],H).
last([_|T],X) :- last(T,X).
