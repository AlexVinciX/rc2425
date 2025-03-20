/*
 * 
 * my_append(?Lista1, ?Lista2, ?Resultado).
 * es cierto si Resultado unifica con un lista que contiene los elementos de List1
 * seguidos de los elementos de List2 en el mismo orden (Concatena).
 * 
 * 1) P(n0)
 * 2) P(n-1) -> P(n)
 * 
 * P(n) :- P(n-1)
 * 
 * 
*/

/* Caso Base */
my_append([], List2, List2).

my_append([Cab|Resto] , List2 ,  [Cab|R] ) :- my_append( Resto , List2 , R ).
