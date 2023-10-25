zatrudnienie(anna, kowalski, zelmer, duza_firma, 2000).
zatrudnienie(jan, nowak, bosch, mala_firma, 2700).
zatrudnienie(julia, malinowski, electrolux, srednia_firma, 2300).
zatrudnienie(krzysztof, jablonski, samsung, duza_firma, 1400).
zatrudnienie(lucja, dziedzic, bosch, mala_firma, 2800).

zadowolony_z_pracy(Imie, Nazwisko) :-
    zatrudnienie(Imie, Nazwisko, _, mala_firma, Zarobki),
    Zarobki > 2500.


%?- zadowolony_z_pracy(jan,nowak).
%?- zatrudnienie(Imie, Nazwisko, _, duza_firma, Zarobki), Zarobki < 1500.
