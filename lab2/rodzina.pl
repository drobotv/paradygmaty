rodzic(zofia, marcin).
rodzic(andrzej, marcin).
rodzic(andrzej, kasia).
rodzic(marcin, ania).
rodzic(marcin, krzyœ).
rodzic(krzyœ, miko³aj).
kobieta(zofia).
kobieta(kasia).
kobieta(ania).
mê¿czyzna(andrzej).
mê¿czyzna(marcin).
mê¿czyzna(krzyœ).
mê¿czyzna(miko³aj).
potomek(Y,X):-
	rodzic(X,Y).
matka(X,Y):-
	rodzic(X,Y),
	kobieta(X).
dziadkowie(X,Z):-
	rodzic(X,Y),
	rodzic(Y,Z).
siostra(X,Y):-
	rodzic(Z,X),
	rodzic(Z,Y),
	kobieta(X).

%zadanie 1
%1.1
sczesliwy(X):-
	rodzic(X,_).

dwoje_dzieci(X):-
	rodzic(X,Y),
	siostra(_,Y).


%1.2
wnuk(X,Y):-
	rodzic(Z,X),
	rodzic(Y,Z).

%1.3
ciotka(X,Y):-
    siostra(X,Z),
    rodzic(Z,Y).

%1.4
nastepca(Y,X):-
    potomek(Y,X).
