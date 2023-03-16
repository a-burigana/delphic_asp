#include "../../actions.lp".

% *** ATOMS ***
atom(at_1).
atom(at_2).
atom(at_3).
atom(at_4).
atom(at_5).
atom(at_6).
atom(at_7).
atom(at_8).
atom(at_9).
atom(at_10).
atom(q).


% *** AGENTS ***
agent(a).
agent(b).
agent(c).
agent(d).
agent(e).
agent(f).
agent(g).
agent(h).


% *** ACTIONS ***
action(left).
action_type(left, ontic).
causes(left, at_1, at_2).
causes(left, at_2, at_3).
causes(left, at_3, at_4).
causes(left, at_4, at_5).
causes(left, at_5, at_6).
causes(left, at_6, at_7).
causes(left, at_7, at_8).
causes(left, at_8, at_9).
causes(left, at_9, at_10).
causes(left, at_10, false).
action_pre(left, neg(at_1)).
obs_cond(left, a, f_obs, true).
obs_cond(left, b, f_obs, true).
obs_cond(left, c, f_obs, true).
obs_cond(left, d, f_obs, true).
obs_cond(left, e, f_obs, true).
obs_cond(left, f, f_obs, true).
obs_cond(left, g, f_obs, true).
obs_cond(left, h, f_obs, true).


action(right).
action_type(right, ontic).
causes(right, at_1, false).
causes(right, at_2, at_1).
causes(right, at_3, at_2).
causes(right, at_4, at_3).
causes(right, at_5, at_4).
causes(right, at_6, at_5).
causes(right, at_7, at_6).
causes(right, at_8, at_7).
causes(right, at_9, at_8).
causes(right, at_10, at_9).
action_pre(right, neg(at_10)).
obs_cond(right, a, f_obs, true).
obs_cond(right, b, f_obs, true).
obs_cond(right, c, f_obs, true).
obs_cond(right, d, f_obs, true).
obs_cond(right, e, f_obs, true).
obs_cond(right, f, f_obs, true).
obs_cond(right, g, f_obs, true).
obs_cond(right, h, f_obs, true).


action(sense).
action_type(sense, sensing).
determines(sense, q).
action_pre(sense, at_8).
obs_cond(sense, a, f_obs, true).
obs_cond(sense, b, obl  , true).
obs_cond(sense, c, obl  , true).
obs_cond(sense, d, obl  , true).
obs_cond(sense, e, obl  , true).
obs_cond(sense, f, obl  , true).
obs_cond(sense, g, obl  , true).
obs_cond(sense, h, obl  , true).


action(shout_1).
action_type(shout_1, announcement).
announces(shout_1, q).
action_pre(shout_1, and(neg(dia(a,neg(q))),at_1)).
obs_cond(shout_1, a, f_obs, true).
obs_cond(shout_1, b, f_obs, true).
obs_cond(shout_1, f, f_obs, true).
obs_cond(shout_1, c, obl  , true).
obs_cond(shout_1, d, obl  , true).
obs_cond(shout_1, e, obl  , true).
obs_cond(shout_1, g, obl  , true).
obs_cond(shout_1, h, obl  , true).


action(shout_10).
action_type(shout_10, announcement).
announces(shout_10, q).
action_pre(shout_10, and(neg(dia(a,neg(q))),at_10)).
obs_cond(shout_10, a, f_obs, true).
obs_cond(shout_10, h, f_obs, true).
obs_cond(shout_10, b, obl  , true).
obs_cond(shout_10, c, obl  , true).
obs_cond(shout_10, d, obl  , true).
obs_cond(shout_10, e, obl  , true).
obs_cond(shout_10, f, obl  , true).
obs_cond(shout_10, g, obl  , true).


action(shout_2).
action_type(shout_2, announcement).
announces(shout_2, q).
action_pre(shout_2, and(neg(dia(a,neg(q))),at_2)).
obs_cond(shout_2, a, f_obs, true).
obs_cond(shout_2, b, f_obs, true).
obs_cond(shout_2, c, f_obs, true).
obs_cond(shout_2, f, f_obs, true).
obs_cond(shout_2, d, obl  , true).
obs_cond(shout_2, e, obl  , true).
obs_cond(shout_2, g, obl  , true).
obs_cond(shout_2, h, obl  , true).


action(shout_3).
action_type(shout_3, announcement).
announces(shout_3, q).
action_pre(shout_3, and(neg(dia(a,neg(q))),at_3)).
obs_cond(shout_3, a, f_obs, true).
obs_cond(shout_3, b, f_obs, true).
obs_cond(shout_3, c, f_obs, true).
obs_cond(shout_3, d, obl  , true).
obs_cond(shout_3, e, obl  , true).
obs_cond(shout_3, f, obl  , true).
obs_cond(shout_3, g, obl  , true).
obs_cond(shout_3, h, obl  , true).


action(shout_4).
action_type(shout_4, announcement).
announces(shout_4, q).
action_pre(shout_4, and(neg(dia(a,neg(q))),at_4)).
obs_cond(shout_4, a, f_obs, true).
obs_cond(shout_4, c, f_obs, true).
obs_cond(shout_4, d, f_obs, true).
obs_cond(shout_4, b, obl  , true).
obs_cond(shout_4, e, obl  , true).
obs_cond(shout_4, f, obl  , true).
obs_cond(shout_4, g, obl  , true).
obs_cond(shout_4, h, obl  , true).


action(shout_5).
action_type(shout_5, announcement).
announces(shout_5, q).
action_pre(shout_5, and(neg(dia(a,neg(q))),at_5)).
obs_cond(shout_5, a, f_obs, true).
obs_cond(shout_5, d, f_obs, true).
obs_cond(shout_5, e, f_obs, true).
obs_cond(shout_5, b, obl  , true).
obs_cond(shout_5, c, obl  , true).
obs_cond(shout_5, f, obl  , true).
obs_cond(shout_5, g, obl  , true).
obs_cond(shout_5, h, obl  , true).


action(shout_6).
action_type(shout_6, announcement).
announces(shout_6, q).
action_pre(shout_6, and(neg(dia(a,neg(q))),at_6)).
obs_cond(shout_6, a, f_obs, true).
obs_cond(shout_6, d, f_obs, true).
obs_cond(shout_6, e, f_obs, true).
obs_cond(shout_6, g, f_obs, true).
obs_cond(shout_6, b, obl  , true).
obs_cond(shout_6, c, obl  , true).
obs_cond(shout_6, f, obl  , true).
obs_cond(shout_6, h, obl  , true).


action(shout_7).
action_type(shout_7, announcement).
announces(shout_7, q).
action_pre(shout_7, and(neg(dia(a,neg(q))),at_7)).
obs_cond(shout_7, a, f_obs, true).
obs_cond(shout_7, e, f_obs, true).
obs_cond(shout_7, g, f_obs, true).
obs_cond(shout_7, h, f_obs, true).
obs_cond(shout_7, b, obl  , true).
obs_cond(shout_7, c, obl  , true).
obs_cond(shout_7, d, obl  , true).
obs_cond(shout_7, f, obl  , true).


action(shout_8).
action_type(shout_8, announcement).
announces(shout_8, q).
action_pre(shout_8, and(neg(dia(a,neg(q))),at_8)).
obs_cond(shout_8, a, f_obs, true).
obs_cond(shout_8, g, f_obs, true).
obs_cond(shout_8, h, f_obs, true).
obs_cond(shout_8, b, obl  , true).
obs_cond(shout_8, c, obl  , true).
obs_cond(shout_8, d, obl  , true).
obs_cond(shout_8, e, obl  , true).
obs_cond(shout_8, f, obl  , true).


action(shout_9).
action_type(shout_9, announcement).
announces(shout_9, q).
action_pre(shout_9, and(neg(dia(a,neg(q))),at_9)).
obs_cond(shout_9, a, f_obs, true).
obs_cond(shout_9, h, f_obs, true).
obs_cond(shout_9, b, obl  , true).
obs_cond(shout_9, c, obl  , true).
obs_cond(shout_9, d, obl  , true).
obs_cond(shout_9, e, obl  , true).
obs_cond(shout_9, f, obl  , true).
obs_cond(shout_9, g, obl  , true).




% *** INITIAL STATE ***

w_init(w0). w_init(w1).

r_init(W1, W2, AG) :- w_init(W1), w_init(W2), agent(AG).

v_init(W, at_1) :- w_init(W).

v_init(w0, q).

dw_init(w0).
