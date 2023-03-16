% *** GOALS ***
goal(neg(dia(a,neg(sb)))).
goal(neg(dia(b,neg(sc)))).
goal(neg(dia(c,neg(sa)))).
goal(dia(a,neg(sc))).
goal(dia(c,neg(sb))).
goal(dia(b,and(dia(c,neg(sa)),dia(c,sa)))).

% Solution: plan(1,right_a). plan(2,share_c_sc_1). plan(3,right_b). plan(4,share_b_sb_2). plan(5,left_a). plan(6,share_a_sa_1).
