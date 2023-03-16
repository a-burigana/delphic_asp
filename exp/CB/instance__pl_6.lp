#program base.
% *** GOALS ***
agent_set(bc).
contains_ag(bc,b).
contains_ag(bc,c).

goal(neg(dia(b,neg(and(dia(a,neg(tail)),dia(a,tail)))))).
goal(dia(a,and(dia(c,neg(tail)),dia(c,tail)))).

goal(neg(dia(AG, neg(tail)))) :- contains_ag(bc, AG).
goal(neg(dia(AG1, dia(AG2,neg(tail)) ))) :- contains_ag(bc, AG1), contains_ag(bc, AG2), AG1 != AG2.
goal(neg(dia(AG1, dia(AG2, dia(AG3,neg(tail)) )) )) :- contains_ag(bc, AG1), contains_ag(bc, AG2), contains_ag(bc, AG3), AG1 != AG2, AG1 != AG3, AG2 != AG3.
