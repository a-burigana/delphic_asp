% *** GOALS ***
goal(neg(dia(a,neg(q)))).
goal(neg(dia(e,dia(a,neg(q))))).
goal(neg(dia(f,dia(a,neg(q))))).
goal(neg(dia(g,dia(a,neg(q))))).
goal(neg(dia(h,dia(a,neg(q))))).
goal(neg(dia(e,neg(dia(h,neg(q)))))).

% Solution: plan(1,sense). plan(2,left). plan(3,left). plan(4,left). plan(5,shout_7). plan(6,left). plan(7,left). plan(8,shout_5).
