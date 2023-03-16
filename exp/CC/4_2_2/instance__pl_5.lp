#program base.
% *** GOALS ***
goal(neg(dia(b,neg(at_box1_room1)))).
goal(at_a_room3).

goal(neg(dia(AG, neg(at_box2_room3)))) :- agent(AG).
goal(neg(dia(AG1, dia(AG2,neg(at_box2_room3)) ))) :- agent(AG1), agent(AG2), AG1 != AG2.

% Solution: plan(1,left_b). plan(2,b_check_b1_1). plan(3,right_a). plan(4,a_check_b2_3). plan(5,tell_a_b2_3).
