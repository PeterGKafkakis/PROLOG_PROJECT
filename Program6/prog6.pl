% Resource used to sum list - https://stackoverflow.com/questions/9875760/sum-of-elements-in-list-in-prolog

% Facts
salary([jacqueline, bouvier], 23000).
salary([patty, bouvier], 23000).
salary([selma, bouvier], 23000).
salary([montgomery, burns], 1000000).
salary([larry, burns], 50000).
salary([ned, flanders], 40000).
salary([maude, flanders], 42000).
salary([rod, flanders], 0).
salary([barney, gumble], 40000).
salary([edna, krabappel], 30000).
salary([herschel, krustofski], 300000).
salary([helen, lovejoy], 30000).
salary([jessica, lovejoy], 0).
salary([timothy, lovejoy], 150000).
salary([apu, nahasapeemapetilon], 150000).
salary([jamshed, nahasapeemapetilon], 0).
salary([manjula, nahasapeemapetilon], 120000).
salary([pahusacheta, nahasapeemapetilon], 0).
salary([sanjay, nahasapeemapetilon], 0).
salary([bartholomew, simpson], 0).
salary([homer, simpson], 40000).
salary([lisa, simpson], 500).
salary([maggie, simpson], 0).
salary([marge, simpson], 10000).

% Rules
% -----
family_income(SimpsonFamily,TotalIncome):- get_income(SimpsonFamily,SimsMoney),sum_list(SimsMoney,TotalIncome).

%Findall works with an empty list if the goal has no solutions.
%--------------------------------------------------------------
get_income(SimsFam,SimsMoney):- findall(SimsIncome,salary([_|[SimsFam|_]],SimsIncome),SimsMoney).
sum_list([],0).
sum_list([Sh|St],SimsIncome):- sum_list(St,OtherSimsIncome),SimsIncome is Sh+OtherSimsIncome.
