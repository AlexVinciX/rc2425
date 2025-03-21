/*
isogram(String).
es cierto si String contiene caracteres diferentes excepto los espacios en blancos y los guiones que sí se podrán repetir.


quita_blancos(Lista, R).
es cierto si R unifica con una lista eliminando los caracteres 32  y 45 (" ", "-").

*/

:- use_module(library(clpfd)).
blanco(32).
blanco(45).
quita_blancos(Lista, R) :- exclude(blanco, Lista, R).

isogram(String) :- string_lower(String, Minusculas), string_chars(Minusculas, Caracteres), string_codes(Caracteres, Codigo), quita_blancos(Codigo, Resultado),
all_distinct(Resultado).



