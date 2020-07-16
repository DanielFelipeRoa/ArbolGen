
padre(ivan,steve).
padre(brandon,manuel).
padre(juan,mario).
padre(steve,raul).
padre(raul,brandon).
padre(raul,juan).
hermano(brandon,juan).
hermano(steve,daniela).
hermano(sandra,ana).
madre(maria,steve).
madre(maria,daniela).
madre(ana,mario).
madre(sandra,manuel).
mujer(sandra).
mujer(ana).
mujer(maria).
mujer(daniela).
-mujer(ivan).
-mujer(steve).
-mujer(brandon).
-mujer(manuel).
-mujer(juan).
-mujer(mario).
-mujer(raul).

nieto(X,Y):-padre(Y,C),padre(C,X),-mujer(Y).
tia(X,Y):-(padre(C,Y);madre(C,Y)),hermano(C,X),mujer(X).
primohermano(X,Y):-(padre(C,X);madre(C,X)),(padre(Z,Y);madre(Z,Y)),hermano(C,Z).
abuelapaterna(X,Y):-padre(C,Y),-mujer(C),madre(X,C).
bisabuelo(X,Y):-padre(X,C),(padre(C,Z);madre(C,Z)),(padre(Z,Y);madre(Z,Y)),-mujer(X).
esHermano(X, Y): Padre(Z, X), Padre(Z, Y).
esTio(X, Y): Padre(Z, Y), esHermano(Z, X).
