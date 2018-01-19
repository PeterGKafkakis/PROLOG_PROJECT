% translation facts

translation(ling,zero).
translation(yi,one).
translation(er,two).
translation(san,three).
translation(si,four).
translation(wu,five).
translation(liu,six).
translation(qi,seven).
translation(ba,eight).
translation(jiu,nine).
translation(shi,ten).


%translate([qi,wu,ba,shi,jiu], English).
%

%Recursive Solution!
%Base Case
translate([],[]).

%Recursive Step
% 1. Reduce Problem Space
% 2. Contribue solution with recursive call

translate([Ch|Ct], [Eh|Et]):- translation(Ch, Eh), translate(Ct,Et).


% translate([qi,wu,ba,shi,jiu], E)
