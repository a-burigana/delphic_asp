% ********** PRODUCT UPDATE **********

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
dw(t, (W, Ew), E) :- dw(t-1, W, Ew), de(ACT, E), w(t, (W, Ew), E).

% ***** WORLDS *****
w(t, (W, Ew), E)  :- plan(t, ACT), e(ACT, E), w(t-1, W, Ew), pre(t, E, PRE), holds(t-1, W, Ew, PRE).

% ***** ACCESSIBILITY RELATIONS *****
r(t, (W, Ew), E,
     (V, Ev), F,  AG) :- w(t, (W, Ew), E), w(t, (V, Ev), F),
                         r(t-1, W, Ew, V, Ev, AG), qt(t, E, F, AG).

% ***** VALUATION FUNCTION *****
v(t, (W, Ew), E, P) :- w(t, (W, Ew), E), post(t, E, P, POST), holds(t-1, W, Ew, POST).

% Inertia in ontic actions
v(t, (W, Ew), E, P) :- w(t, (W, Ew), E), plan(t, ACT), inertia(ACT, E, P), v(t-1, W, Ew, P).

#program base.

% ***** INITIAL STATE *****
w(0, W, null) :- w_init(W).
r(0, W1, null, W2, null, AG) :- r_init(W1, W2, AG).
v(0, W, null, P) :- v_init(W, P).
dw(0, W, null) :- dw_init(W).
