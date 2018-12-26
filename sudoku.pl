% sudoku solver
% this program is written in swi-prolog
:- use_module(library(clpfd)).

sudoku(Rows) :-
    solve(Rows),
    pp(Rows).

solve(Rows) :-
    length(Rows, 9),  % ensure there are 9 rows
	maplist(length_(9), Rows),  % ensure each row has 9 elements (see below for length_)
	append(Rows, Values), Values ins 1..9,
	maplist(all_distinct, Rows),
	transpose(Rows, Columns),
	maplist(all_distinct, Columns),
	Rows = [A,B,C,D,E,F,G,H,I],
	blocks(A, B, C), blocks(D, E, F), blocks(G, H, I),
	maplist(label, Rows).

length_(L, Ls) :- length(Ls, L).  % version of length that's easierto use with maplist (above)

% this predicate ensures a "block" (3x3 grid) contains only distinct valueis
blocks([], [], []).
blocks([A,B,C|Bs1], [D,E,F|Bs2], [G,H,I|Bs3]) :-
	all_distinct([A,B,C,D,E,F,G,H,I]),
	blocks(Bs1, Bs2, Bs3).


% pretty print
pp([]).
pp([Rows|Columns]) :-
    write(Rows),nl,
    pp(Columns).

test :-
    Rows = [
        [8,_,_,_,_,_,_,_,_],
        [_,_,3,6,_,_,_,_,_],
        [_,7,_,_,9,_,2,_,_],
        [_,5,_,_,_,7,_,_,_],
        [_,_,_,_,4,5,7,_,_],
        [_,_,_,1,_,_,_,3,_],
        [_,_,1,_,_,_,_,6,8],
        [_,_,8,5,_,_,_,1,_],
        [_,9,_,_,_,_,4,_,_]
    ],
    solve(Rows),
    pp(Rows).
