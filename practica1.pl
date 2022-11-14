%base de conocimiento en este apartado colocamos todos lo hechos.
ve_peliculas(roberto,suspenso).
ve_peliculas(jaanai,suspenso).
ve_peliculas(abimael,suspenso).
ve_peliculas(leonardo,romance).
ve_peliculas(miguel,terror).

escucha_musica(abelino,reggae).
escucha_musica(antonio,rock).
escucha_musica(izmucaneth,reggae).
escucha_musica(rolando,rock).
escucha_musica(maldonado,regional).

tiene_audifiono(abelino,no).
tiene_audifiono(antonio,no).
tiene_audifiono(izmucaneth,si).
tiene_audifiono(rolando,si).
tiene_audifiono(maldonado,si).
tiene_audifiono(roberto,no).
tiene_audifiono(jaanai,si).
tiene_audifiono(abimael,no).
tiene_audifiono(leonardo,si).
tiene_audifiono(miguel,si).

cuenta_spo(abelino,no).
cuenta_spo(antonio,si).
cuenta_spo(izmucaneth,si).
cuenta_spo(rolando,no).
cuenta_spo(maldonado,si).

cuenta_net(roberto,si).
cuenta_net(jaanai,si).
cuenta_net(abimael,si).
cuenta_net(leonardo,no).
cuenta_net(miguel,si).

consume(roberto,palomitas).
consume(jaanai,palomitas).
consume(abimael,maruchan).
consume(leonardo,maruchan).
consume(miguel,ensalada).

tiempo_libre(roberto,si).
tiempo_libre(jaanai,si).
tiempo_libre(abimael,si).
tiempo_libre(leonardo,no).
tiempo_libre(miguel,no).

tiene_tardeperfecta(abelino,no).
tiene_tardeperfecta(antonio,no).
tiene_tardeperfecta(izmucaneth,si).
tiene_tardeperfecta(rolando,si).
tiene_tardeperfecta(maldonado,no).
tiene_tardeperfecta(roberto,no).
tiene_tardeperfecta(jaanai,si).
tiene_tardeperfecta(abimael,no).
tiene_tardeperfecta(leonardo,si).
tiene_tardeperfecta(miguel,si).

%Ejercicio 1 obtenemos a todos los que le gusta ver peliculas.
%cuenta_net(X,si).
%Ejercicio 2 Obtenemos a todos los que le gusta escuchar musica
%Cuenta_spo(X,si).
%Ejercicio 3 Obtenemos las siguiente caracteristicas dependiendo de las condiciones.
estado1(X):-ve_peliculas(X,suspenso),consume(X,palomitas),cuenta_net(X,si),tiempo_libre(X,si),tiene_tardeperfecta(X,si).
%Ejercicio 4 Obtenemos las siguientes caracteristicas dependiendo de las condiciones.
vida_saludable(X):-consume(X,ensalada),cuenta_net(X,si).
%Ejercicio 5 Obtenemos las siguientes caracteristicas dependiendo de las condiciones.
disfruta_camino(X):-escucha_musica(X,regional),tiene_audifiono(X,si),cuenta_spo(X,si).
%Ejercicio 6 Obtenemos las siguientes caracteristicas dependiendo de las condiciones.
es_feliz(X):-cuenta_net(X,si),consume(X,maruchan),tiempo_libre(X,si).
%Ejercicio 7 Obtenemos las siguientes caracteristicas dependiendo de las condiciones.
son_amigos(X,Y):- consume(X,maruchan),consume(Y,maruchan);consume(X,palomitas),consume(Y,palomitas);consume(X,ensalada),consume(Y,ensalada);ve_peliculas(X,suspenso),ve_peliculas(Y,suspenso);ve_peliculas(X,romance),ve_peliculas(Y,romance); ve_peliculas(X,terror),ve_peliculas(Y,terror).