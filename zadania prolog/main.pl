% Zadanie 1
% Napisz w Prologu klauzule, obliczająca pole kwadratu oraz koła

% ?- kwadrat_pole(5, X).
% ?- kolo_pole(5, X).

kwadrat_pole(Bok, Pole) :-
    Bok >=0,
    Pole is Bok * Bok.

kolo_pole(Promien, Pole) :-
    Promien >=0,
    Pole is 3.14159 * Promien * Promien.

% Zadanie 2
% Napisz w Prologu klauzule, obliczająca średnią arytmetyczna dwóch liczb.

% ?- srednia_dwoch(5, 6, X).

srednia_dwoch(A, B, Odp) :-
    Odp is (A + B) / 2.

% Zadanie 3
% Dla faktów podanych w pliku faktyexample.pl napisz klauzule, która wypisze tylko nazwy figur,
% które maja nie więcej niż piec ścian.

% ?- nazwy_figur_mniej_niz_6_scian.

% <fakty>
figura(kwadrat,4).
figura(trojkat,3).
figura(trapez,4).
figura(pieciokat_foremny,5).
figura(szczesciokat_foremny,6).
figura(osmiokat_foremny,8).
figura(dziesieciokat_foremny,10).
% </fakty>

nazwy_figur_mniej_niz_6_scian :-
    figura(Nazwa, LiczbaScian),
    LiczbaScian =< 5,
    write(Nazwa), nl,
    fail.
