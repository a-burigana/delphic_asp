#program base.
% *** GOALS ***
goal(neg(dia(AG, neg(tail)))) :- agent(AG).
goal(neg(dia(AG1, dia(AG2,neg(tail)) ))) :- agent(AG1), agent(AG2), AG1 != AG2.
goal(neg(dia(AG1, dia(AG2, dia(AG3,neg(tail)) )) )) :- agent(AG1), agent(AG2), agent(AG3), AG1 != AG2, AG1 != AG3, AG2 != AG3.
