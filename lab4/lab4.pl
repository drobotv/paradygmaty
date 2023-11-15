% listy
% Zadanie 2

pisz([]).
pisz([H|T]):-
    write(H),
    write(' '),
    pisz(T).

% Zadanie 3

% Zdefiniować predykat należy(E, L) - element E należy do listy L. Wskazówka: sformułować
% dwie reguły - (1) E jest głową listy, (2) E należy do ogona listy.

nalezy(E,[E|_]). 
nalezy(E,[_|T]) :- nalezy(E,T).

% Zadanie 4

% Zdefiniuj predykat wyznaczający długość listy.
% dlugosc([4,34,4,2],X).

dlugosc([],0).
dlugosc([_|T],Dlugosc):-
    dlugosc(T,DlugoscT), Dlugosc is DlugoscT + 1.


% Zadanie 5

% Zdefiniuj predykat pozwalający na łączenie dwóch list.
% dolacz([4,34,4,2],[5,5],X).

dolacz([],Lista,Lista).
dolacz([H|T],Lista,[H|Y]):-
    dolacz(T,Lista,Y).

% Zadanie 6

% Zdefiniuj predykat pozwalający na dodawanie elementów do listy.
% unshift(x, [1,3,2], X).
% push(x, [1,3,2], X).

unshift(Element,Lista,[Element|Lista]).

push(Element,[],[Element]).
push(Element,[H|T],[H|Lista]):-
    push(Element,T,Lista).

% Zadanie 7

% Zdefiniuj predykat pozwalający na usuwanie elementów do listy.
% usun(b, [b, a, b, c, b], X).

usun(_,[],[]).
usun(Element,[Element|T],T1):-
    usun(Element,T,T1).
usun(Element,[H|T],[H|T1]):-
    Element \= H,
    usun(Element,T,T1).

% Zadanie 8

% Znaleźć ostatni element listy (zdefiniować predykat ostatni(E, L)).
% ostatni(X, [b, a, b, c, b2]).

ostatni(E,[E]).
ostatni(E,[_|T]):-
    ostatni(E,T).

% Zadanie 9

% Sprawdzić, czy pierwsza lista jest początkiem drugiej listy
% (zdefiniować predykat początek(Lista1,Lista2)).
% poczatek([hey], [hey, f,g,h]).

poczatek([],_).
poczatek([H1|T1],[H2|T2]):-
    H1 = H2,
    poczatek(T1,T2).
