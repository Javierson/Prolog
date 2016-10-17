
% Evento

% Cuando pasas por una ruta tienes cuatro eventos
% Los eventos pueden repetirse o no surgir alguno de ellos
% Se implementa un contador de eventos
% empezando desde el primero hasta el cuarto
% Al concluir el cuarto llegas a la ciudad

% Total de eventos cuatro

igual4(X) :- X is 4.

% Saldo de los entrenadores

saldo(misty, 2000).
saldo(brock, 3000).
saldo(ash, 4000).

% Lista de pokemones salvajes

% pokemon(bulbasaur, 0).
% pokemon(squattle, 1).
% pokemon(charmander, 2).
% pokemon(magikarp, 3).
% pokemon(pikachu, 4).

% batalla(A, B = random(4)) :- pokemon(X, Y).

pokemon(X) :- lista(L), random(X,L).
lista([charmander, bulbasaur, squirtle, pikachu]).

% Huevo

huevo(X) :- lista(L), random(X,L).
lista([huevo, sinHuevo, sinHuevo, sinHuevo]).

% http://es.pokemon.wikia.com/wiki/Kalos

% Rutas

camino(puebloDeInicio, ruta1, puebloAcuarela).
camino(puebloAcuarela, ruta2, ciudadNovarte).
camino(ciudadNovarte).

% Lugares como pueblos y ciudades

lugar(puebloDeInicio).
lugar(puebloAcuarela).
lugar(ciudadNovarte).

lugar(X) :- camino(X, _).
lugar(X) :- camino(_, X).

% Entrenadores por rutas

ruta1 :- (misty, huevo(X), pokemon(X)).
ruta2 :- (brock, ash, huevo(X), pokemon(X)).
