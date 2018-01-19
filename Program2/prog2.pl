


or(0,0,0).
or(1,0,1).
or(0,1,1).
or(1,1,1).

and(0,0,0).
and(1,0,0).
and(0,1,0).
and(1,1,1).

not(0,1).
not(1,0).

xor(0,0,0).
xor(1,0,1).
xor(0,1,1).
xor(1,1,0).

half_sub(A, B, Diff, Borrow):-
    xor(A,B,Diff),
    not(A, Neg),
    and(B, Neg, Borrow).



