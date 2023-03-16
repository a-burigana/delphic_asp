% ***** FORMULAE *****
formula(F) :- action_pre(_, F),     F != true.
formula(F) :- precond(_, _, F),     F != true.
formula(F) :- postcond(_, _, _, F), F != true.
formula(F) :- obs_cond(_, _, _, F), F != true.
formula(F) :- goal(F).

formula(F ) :- formula(  neg(F     )).
formula(F1) :- formula(  and(F1, F2)).
formula(F2) :- formula(  and(F1, F2)).
formula(F1) :- formula(   or(F1, F2)).
formula(F2) :- formula(   or(F1, F2)).

formula(F ) :- formula(  dia(_, F  )).


#program check(t).

holds(t, W, E, true) :- w(t, W, E).
:- holds(t, W, E, false), w(t, W, E).

holds(t, W, E, P)             :- w(t, W, E), v(t, W, E, P), atom(P), formula(P).

holds(t, W, E,   neg(F))      :- w(t, W, E), not holds(t, W, E, F),                      formula(  neg(F)),      formula(F).
holds(t, W, E,   and(F1, F2)) :- w(t, W, E),     holds(t, W, E, F1), holds(t, W, E, F2), formula(  and(F1, F2)), formula(F1), formula(F2).
holds(t, W, E,    or(F1, F2)) :- w(t, W, E),     holds(t, W, E, F1),                     formula(   or(F1, F2)), formula(F1), formula(F2).
holds(t, W, E,    or(F1, F2)) :- w(t, W, E),                         holds(t, W, E, F2), formula(   or(F1, F2)), formula(F1), formula(F2).

holds(t, W, E,   dia(AG, F )) :- w(t, W, E), formula(dia(AG, F )), formula(F), agent(AG),
                                 w(t, V, Ev), r(t, W, E, V, Ev, AG), holds(t, V, Ev, F).

% -holds(t, W, E, box(AG , F)) :- w(t, W, E), formula(box(AG, F)), formula(F), agent(AG),
%                                 r(t, W, E, Tv, V, Ev, AG), not holds(Tv, V, Ev, F).

% holds(t, W, E, box(AG , F)) :- not -holds(t, W, E, box(AG , F)), w(t, W, E), formula(box(AG , F)), formula(F), agent(AG).
