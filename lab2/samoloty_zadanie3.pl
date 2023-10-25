lot(a1110, warszawa, krakow, 0800, 0930, [1,0,1,0,1,0,1]).
lot(a1500, krakow, rzeszow, 1000, 1100, [0,1,0,1,0,1,0]).
lot(a1111, rzeszow, warszawa, 1200, 1300, [1,1,1,1,1,1,1]).
lot(a1230, krakow, milano, 1400, 1530, [0,0,1,0,0,1,0]).
lot(a1231, milano, krakow, 1000, 1200, [1,0,0,1,1,0,1]).
lot(a2700, warszawa, berlin, 2000, 2230, [0,1,1,0,0,1,0]).
lot(a2701, berlin, warszawa, 2030, 2300, [0,1,1,0,0,1,0]).
lot(a2324, warszawa, noberlin, 2000, 2230, [0,1,1,0,0,1,0]).

%1.1
%?- lot(Numer,Skad,Do,_,_,[_,1,_,_,_,_,_]).

%1.2
%?- lot(_,rzeszow,warszawa,Wylot,Przylot,_).

%1.3
%?- lot(a2324,Skad,Do,_,_,_).

%1.4
%?- lot(_,berlin,warszawa,_,_,Dni).

%1.5
% ?- (lot(Numer,_,warszawa,_,Przylot,_),(Przylot>=0800, Przylot=<1000; Przylot>=1800)).










































