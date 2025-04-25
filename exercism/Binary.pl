
binary(Str, Dec) :- string_chars(Str,List), maplist(binary, List), chars2dec(List, Dec). 


chars2dec([], 0).
chars2dec([Cab|Resto], R) :- chars2dec(Resto, Dec), number_chars(N,[Cab]), length(Resto, Long), R is Dec + N * 2 ^ Long.
binary('0').
binary('1').
