#include "../../actions.lp".

% *** ATOMS ***
atom(assemble).
atom(qualify_a).
atom(qualify_b).
atom(restart).


% *** AGENTS ***
agent(a).
agent(b).


% *** ACTIONS ***
action(act_assemble).
action_type(act_assemble, ontic).
causes(act_assemble, assemble, true).
action_pre(act_assemble, and(neg(dia(b,dia(a,dia(b,dia(a,dia(b,dia(a,neg(qualify_a)))))))),neg(dia(a,dia(b,dia(a,dia(b,dia(a,dia(b,neg(qualify_b)))))))))).
obs_cond(act_assemble, a, f_obs, true).
obs_cond(act_assemble, b, f_obs, true).


action(act_res).
action_type(act_res, ontic).
causes(act_res, restart, true).
action_pre(act_res, or(neg(dia(a,dia(b,qualify_a))),neg(dia(b,dia(a,qualify_b))))).
obs_cond(act_res, a, f_obs, true).
obs_cond(act_res, b, f_obs, true).


action(sense_a).
action_type(sense_a, sensing).
determines(sense_a, qualify_a).
action_pre(sense_a, and(dia(a,neg(qualify_a)),dia(a,qualify_a))).
obs_cond(sense_a, a, f_obs, true).
obs_cond(sense_a, b, obl  , true).


action(sense_b).
action_type(sense_b, sensing).
determines(sense_b, qualify_b).
action_pre(sense_b, and(dia(b,neg(qualify_b)),dia(b,qualify_b))).
obs_cond(sense_b, b, f_obs, true).
obs_cond(sense_b, a, obl  , true).


action(tell_a).
action_type(tell_a, announcement).
announces(tell_a, qualify_b).
action_pre(tell_a, neg(dia(b,neg(qualify_b)))).
obs_cond(tell_a, a, f_obs, true).
obs_cond(tell_a, b, f_obs, true).


action(tell_b).
action_type(tell_b, announcement).
announces(tell_b, qualify_a).
action_pre(tell_b, neg(dia(a,neg(qualify_a)))).
obs_cond(tell_b, a, f_obs, true).
obs_cond(tell_b, b, f_obs, true).




% *** INITIAL STATE ***

w_init(w0). w_init(w1). w_init(w2). w_init(w3).

r_init(W1, W2, AG) :- w_init(W1), w_init(W2), agent(AG).

v_init(w0, qualify_a).
v_init(w0, qualify_b).

v_init(w1, qualify_a).

v_init(w2, qualify_b).

dw_init(w0).
