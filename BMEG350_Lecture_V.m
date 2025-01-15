% Sub-system G
Num = [1 0 4 5];
Den = [3 2 1 0];
G = tf(Num,Den)

% Sub-system H
Num = [1 0 -2];
Den = [1 2];
H = tf(Num,Den)



[Poles,Zeros] = pzmap(G)

% Series connection
SeriesSys = series(G,H)

% Parallel connection
ParallelSys = parallel(G,H)

% Plot the holes and zeros
pzmap(ParallelSys)

%%

%Example from Lecture VI

Num = [2 1];
Den = [1 5 6];
F = tf(Num,Den)

pzmap(F)


