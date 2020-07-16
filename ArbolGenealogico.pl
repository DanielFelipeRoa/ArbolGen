padre(diego,maria).
padre(natalia,maria).
padre(diego,steve).
padre(natalia,steve).
padre(diego,daniel).
padre(natalia,daniel).
padre(diego,laura).
padre(natalia,laura).
padre(steve,jose).
padre(daniela,jose).
padre(daniel,cristian).
padre(daniela,cristian).
padre(jose,rosa).
padre(ruth,rosa).
padre(jose,felipe).
padre(ruth,felipe).
padre(jose,nicolas).
padre(ruth,nicolas).
padre(nicolas,diana).
padre(gabriela,diana).
padre(nicolas,alejandro).
padre(gabriela,alejandro).
padre(nicolas,alejandra).
padre(gabriela,alejandra).
padre(brandon,sebastian).
padre(alejandra,sebastian).
padre(sebastian,andres).
padre(diana,andres).

nieto(X,Y):- padre(Y,C), padre(C,X).
casados(X,Y):- padre(X,Z),padre(Y,Z).
felices(X):- casados(X,_).
esHermano(X, Y):- padre(Z, X),padre(Z, Y).
esTio(X, Y):- padre(Z, Y),esHermano(Z, X).
esPrimo(X, Y):- padre(Z, X),esTio(Z, Y).
esAbuelo(X, Y):- padre(X,Z),padre(Z, Y).

familiarde(A,B) :- padre(A,B).
familiarde(A,B) :- esHermano(A,B).
familiarde(A,B) :- esTio(A,B).
familiarde(A,B) :- esPrimo(A,B).
familiarde(A,B) :- esAbuelo(A,B).
familiarde(A,B) :- nieto(A,B).

familiaresDe(X,L):- findall(B,familiarde(X,B),L).
