#defined plan/2.

% ***** Generate *****
#program step(t).

1 { plan(t, ACT) : action(ACT), applicable(t, ACT) } 1.

% Test
:- t > 0, plan(t, ACT), not applicable(t, ACT).
:- t > 0, 0 { plan(t, _) } 0, not_goal_at(t).
:- time(t), 0 { applicable(t, _) } 0, not_goal_at(t).
:- time(t), 0 { dw(t, _, _) } 0, not_goal_at(t).


% ***** Check *****
#program check(t).

#external query(t).
time(t).

not_goal_at(t) :- dw(t, W, E), goal(G), not holds(t, W, E, G).
goal_at(t) :- not not_goal_at(t).

:- not_goal_at(t), query(t).


% ***** Display *****
#show plan/2.
#show goal_at/1.
