/*
ordena_insercion(+Lista, -ListaR).
es cierto cuando ListaR unifica con una lista que contiene los mismos elementos que Lista, ordenados de menor a mayor.


1.- P(n0) es cierto
2.- P(n-1) -> P(n)
       P(N) :- N2 is N, P(N2).
       

*/

/* Caso Base */

ordena_insercion([],[]).

ordena_insercion([Cab|Resto], R2) :- ordena_insercion(Resto, R), insertar_lista_ordenada(Cab, R, R2).

/*
insertar_lista_ordenada(+Elem, +Lista, -ListaR).
es cierto cuando ListaR unifica con una lista que contiene los elementos de la lista ordenada Lista, con el elemento Elem insertado de forma ordenada.

*/

/* Caso Base */
insertar_lista_ordenada(E, [], [E]).

insertar_lista_ordenada(E, [Cab|Resto], [E, Cab|Resto]) :- E =< Cab. 
insertar_lista_ordenada(E, [Cab|Resto], [Cab|R]) :- E > Cab, insertar_lista_ordenada(E, Resto, R).
