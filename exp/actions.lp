#defined causes/3.
#defined determines/2.
#defined announces/2.

#program base.
% ********** EVENT MODELS **********

% ***** ONTIC ACTIONS *****
e(ACT, sig) :- action(ACT), action_type(ACT, ontic).
e(ACT, eps) :- action(ACT), action_type(ACT, ontic).

q(ACT, sig, sig, f_obs) :- action(ACT), action_type(ACT, ontic).
q(ACT, sig, eps, obl  ) :- action(ACT), action_type(ACT, ontic).

q(ACT, eps, eps, f_obs) :- action(ACT), action_type(ACT, ontic).
q(ACT, eps, eps, obl  ) :- action(ACT), action_type(ACT, ontic).

precond(ACT, sig, true) :- action(ACT), action_type(ACT, ontic), action_pre(ACT, F).
precond(ACT, eps, true) :- action(ACT), action_type(ACT, ontic).

postcond(ACT, sig, P, F     ) :- action(ACT), action_type(ACT, ontic), causes(ACT,     P , F), atom(P).
postcond(ACT, sig, P, neg(F)) :- action(ACT), action_type(ACT, ontic), causes(ACT, neg(P), F), atom(P).

inertia( ACT, sig, P        ) :- action(ACT), action_type(ACT, ontic), atom(P), 0 { postcond(ACT, sig, P, F) } 0, 0 { postcond(ACT, sig, P, neg(F)) } 0.
inertia( ACT, eps, P        ) :- action(ACT), action_type(ACT, ontic), atom(P).

de(ACT, sig) :- action(ACT), action_type(ACT, ontic).


% ***** SENSING ACTIONS *****
e(ACT, sig) :- action(ACT), action_type(ACT, sensing).
e(ACT, tau) :- action(ACT), action_type(ACT, sensing).
e(ACT, eps) :- action(ACT), action_type(ACT, sensing).

q(ACT, sig, sig, f_obs) :- action(ACT), action_type(ACT, sensing).
q(ACT, tau, tau, f_obs) :- action(ACT), action_type(ACT, sensing).

q(ACT, sig, sig, p_obs) :- action(ACT), action_type(ACT, sensing).
q(ACT, tau, tau, p_obs) :- action(ACT), action_type(ACT, sensing).
q(ACT, sig, tau, p_obs) :- action(ACT), action_type(ACT, sensing).
q(ACT, tau, sig, p_obs) :- action(ACT), action_type(ACT, sensing).

q(ACT, sig, eps, obl  ) :- action(ACT), action_type(ACT, sensing).
q(ACT, tau, eps, obl  ) :- action(ACT), action_type(ACT, sensing).

q(ACT, eps, eps, f_obs) :- action(ACT), action_type(ACT, sensing).
q(ACT, eps, eps, p_obs) :- action(ACT), action_type(ACT, sensing).
q(ACT, eps, eps, obl  ) :- action(ACT), action_type(ACT, sensing).

precond(ACT, sig, P)      :- action(ACT), action_type(ACT, sensing), determines(ACT, P).
precond(ACT, tau, neg(P)) :- action(ACT), action_type(ACT, sensing), determines(ACT, P).
precond(ACT, eps, true)   :- action(ACT), action_type(ACT, sensing).

inertia(ACT, E, P) :- action(ACT), action_type(ACT, sensing), e(ACT, E), atom(P).

de(ACT, sig) :- action(ACT), action_type(ACT, sensing).
de(ACT, tau) :- action(ACT), action_type(ACT, sensing).


% ***** ANNOUNCEMENT ACTIONS *****
e(ACT, sig) :- action(ACT), action_type(ACT, announcement).
e(ACT, tau) :- action(ACT), action_type(ACT, announcement).
e(ACT, eps) :- action(ACT), action_type(ACT, announcement).

q(ACT, sig, sig, f_obs) :- action(ACT), action_type(ACT, announcement).
q(ACT, tau, tau, f_obs) :- action(ACT), action_type(ACT, announcement).

q(ACT, sig, sig, p_obs) :- action(ACT), action_type(ACT, announcement).
q(ACT, tau, tau, p_obs) :- action(ACT), action_type(ACT, announcement).
q(ACT, sig, tau, p_obs) :- action(ACT), action_type(ACT, announcement).
q(ACT, tau, sig, p_obs) :- action(ACT), action_type(ACT, announcement).

q(ACT, sig, eps, obl  ) :- action(ACT), action_type(ACT, announcement).
q(ACT, tau, eps, obl  ) :- action(ACT), action_type(ACT, announcement).

q(ACT, eps, eps, f_obs) :- action(ACT), action_type(ACT, announcement).
q(ACT, eps, eps, p_obs) :- action(ACT), action_type(ACT, announcement).
q(ACT, eps, eps, obl  ) :- action(ACT), action_type(ACT, announcement).

precond(ACT, sig, F)      :- action(ACT), action_type(ACT, announcement), announces(ACT, F).
precond(ACT, tau, neg(F)) :- action(ACT), action_type(ACT, announcement), announces(ACT, F).
precond(ACT, eps, true)   :- action(ACT), action_type(ACT, announcement).

inertia(ACT, E, P) :- action(ACT), action_type(ACT, announcement), e(ACT, E), atom(P).

de(ACT, sig) :- action(ACT), action_type(ACT, announcement).
