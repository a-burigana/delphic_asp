#program base.
% *** GOALS ***
goal(neg(dia(a,neg(at_box1_room1)))).
goal(neg(dia(b,neg(at_box1_room1)))).
goal(neg(dia(a,neg(at_box2_room3)))).
goal(neg(dia(b,neg(at_box2_room3)))).

goal(neg(dia(a,neg(dia(b,neg(at_box2_room3)))))).

goal(at_a_room2).
goal(at_b_room2).

% Solution: plan(1,left_b). plan(2,b_check_b1_1). plan(3,b_check_b2_1). plan(4,right_a). plan(5,a_check_b1_3). plan(6,a_check_b2_3). plan(7,left_a). plan(8,right_b).
