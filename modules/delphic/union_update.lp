% ********** UNION UPDATE **********

#program step(t).

% ***** CONDITIONS *****
pre( t, E,    PRE)  :- plan(t, ACT),  precond(ACT, E,    PRE ).
post(t, E, P, POST) :- plan(t, ACT), postcond(ACT, E, P, POST).

obs(t, AG, OBS)     :- plan(t, ACT), obs_cond(ACT, AG, OBS, COND), dw(t-1, W, Ew), holds(t-1, W, Ew, COND).
qt(t, E, F, AG)     :- plan(t, ACT), q(ACT, E, F, OBS), obs(t, AG, OBS).

% ***** APPLICABILITY *****
-applicable(t, ACT) :- dw(t-1, W, Ew), action_pre(ACT, PRE), not holds(t-1, W, Ew, PRE).
applicable(t, ACT)  :- action(ACT), not -applicable(t, ACT).

% ***** DESIGNATED WORLDS *****
dw(t, (t-1, W, Ew), E) :- dw(t-1, W, Ew), de(ACT, E), pre(t, E, PRE), holds(t-1, W, Ew, PRE).

% ***** WORLDS *****
w(t, (t-1, W, Ew), E)  :- de(ACT, E), dw(t, (t-1, W, Ew), E).

w(t, (Tw , W, Ew), E)  :- w(Tw, W, Ew), w(t, (Tv, V, Ev), F), e(ACT, F), -idle(ACT, E),
                          r(Tv, V, Ev, Tw, W, Ew, AG), qt(t, F, E, AG), pre(t, E, PRE), holds(Tw, W, Ew, PRE).

% ***** ACCESSIBILITY RELATIONS *****
r(t, (Tw, W, Ew), E,
  t, (Tv, V, Ev), F,  AG) :- w(t, (Tw, W, Ew), E), w(t, (Tv, V, Ev), F),
                             r(Tw, W, Ew, Tv, V, Ev, AG), qt(t, E, F, AG).

r(t, (Tw, W, Ew), E,
  Tv , V,         Ev, AG) :- w(t, (Tw, W, Ew), E), w(Tv, V, Ev), idle(ACT, F),
                             r(Tw, W, Ew, Tv, V, Ev, AG), qt(t, E, F, AG).

% ***** VALUATION FUNCTION *****
v(t, (Tw, W, Ew), E, P) :- w(t, (Tw, W, Ew), E), post(t, E, P, POST), holds(Tw, W, Ew, POST).

% Inertia in ontic actions
v(t, (Tw, W, Ew), E, P) :- w(t, (Tw, W, Ew), E), plan(t, ACT), inertia(ACT, E, P), v(Tw, W, Ew, P).

#program base.

% ***** INITIAL STATE *****
w(0, W, null) :- w_init(W).
r(0, W1, null, 0, W2, null, AG) :- r_init(W1, W2, AG).
v(0, W, null, P) :- v_init(W, P).
dw(0, W, null) :- dw_init(W).

% ***** ACTIONS *****
-idle(ACT, E) :- precond(ACT, E, F), F != true.
-idle(ACT, E) :- postcond(ACT, E, _, _).
idle(ACT, E) :- e(ACT, E), not -idle(ACT, E).
