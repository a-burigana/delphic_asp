#program base.
% *** GOALS ***
goal(neg(dia(AG, neg(at_box1_room1)))) :- agent(AG).
goal(neg(dia(AG1, dia(AG2,neg(at_box1_room1)) ))) :- agent(AG1), agent(AG2), AG1 != AG2.
