:- use_module(library(clpfd)).

create((DimX, DimY)) :- DimX > 0, DimY > 0, DimX =:= DimY.

attack((XP,YP), (XS,YS)) :- XP =:= XS.
attack((XP,YP), (XS,YS)) :- YP =:= YS.
attack((XP,YP), (XS,YS)) :- abs(XS-XP) =:= abs(YS-YP).
