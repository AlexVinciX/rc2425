:- use_module(library(clpfd)).

solution(Pairs, Water, Zebra, Vs) :-
        Table   = [Houses,Nations,Drinks,Smokes,Animals],
        Houses  = [Red,Green,Yellow,Blue,Ivory],
        Nations = [England,Spain,Ukraine,Norway,Japan],
        Names   = [englishman,spainard,ukraine,norwegian,japanese],
        Drinks  = [Coffee,Milk,OrangeJuice,Tea,Water],
        Hobbies  = [Painter,Dancer,Reading, Football,Chess],
        Animals = [Dog,Snails,Horse,Fox,Zebra],
        pairs_keys_values(Pairs, Nations, Names),
        maplist(all_distinct, Table),
        append(Table, Vs),
        Vs ins 1..5,
        England #= Red,               % hint 1
        Spain #= Dog,                 % hint 2
        Coffee #= Green,              % hint 3
        Ukraine #= Tea,               % hint 4
        Green #= Ivory + 1,           % hint 5
        Dancer #= Snails,            % hint 6
        Painte #= Yellow,              % hint 7
        Milk #= 3,                    % hint 8
        Norway #= 1,                  % hint 9
        next_to(Reading, Fox),   % hint 10
        next_to(Paint, Horse),        % hint 11
        Football #= OrangeJuice,   % hint 12
        Japan #= Chess,         % hint 13
        next_to(Norway, Blue).        % hint 14

next_to(H, N) :- abs(H-N) #= 1.
