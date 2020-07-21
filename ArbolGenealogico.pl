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

hijo(X,Y):- padre(Y,X).
hermano(X,Y):- padre(Z, X),padre(Z, Y).
abuelo(X,Y):- padre(X,Z),padre(Z,Y).
nieto(X,Y):- abuelo(Y,X).
tio(X,Y):- padre(Z, Y),hermano(Z, X).
sobrino(X,Y):- tio(Y,X).
primo(X, Y):- padre(Z, X),tio(Z, Y).

casados(X,Y):- padre(X,Z),padre(Y,Z).
feliz(X):- casados(X,_).

familiarde(A,B) :- padre(A,B), A\==B.
familiarde(A,B) :- hermano(A,B), A\==B.
familiarde(A,B) :- tio(A,B), A\==B.
familiarde(A,B) :- primo(A,B), A\==B.
familiarde(A,B) :- abuelo(A,B), A\==B.
familiarde(A,B) :- nieto(A,B), A\==B.

familiaresDe(X,L):- findall(B,familiarde(X,B),L).
