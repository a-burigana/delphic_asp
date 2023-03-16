% *** GOALS ***
goal(neg(dia(a,neg(q)))).
goal(neg(dia(c,dia(a,neg(q))))).
goal(neg(dia(e,dia(a,neg(q))))).
goal(neg(dia(f,dia(a,neg(q))))).
goal(neg(dia(g,dia(a,neg(q))))).
goal(neg(dia(h,dia(a,neg(q))))).
goal(neg(dia(e,neg(dia(h,neg(q)))))).

% Solution: plan(1,sense). plan(2,left). plan(3,shout_9). plan(4,left). plan(5,left). plan(6,shout_7). plan(7,left). plan(8,left). plan(9,shout_5).
