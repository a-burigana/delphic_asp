#program base.
% *** GOALS ***
goal(neg(dia(a,neg(at_box1_room1)))).
goal(neg(dia(b,neg(at_box1_room1)))).
goal(neg(dia(a,neg(at_box2_room3)))).
goal(neg(dia(b,neg(at_box2_room3)))).

goal(neg(dia(a,neg(dia(b,neg(at_box2_room3)))))).

goal(at_a_room2).

% Solution: plan(1,left_a). plan(2,a_check_b2_1). plan(3,a_check_b1_1). plan(4,left_b). plan(5,b_check_b2_1). plan(6,right_a). plan(7,b_check_b1_1).
