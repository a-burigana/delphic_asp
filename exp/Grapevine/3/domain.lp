#include "../../actions.lp".

% *** ATOMS ***
atom(at_a_1).
atom(at_a_2).
atom(at_b_1).
atom(at_b_2).
atom(at_c_1).
atom(at_c_2).
atom(sa).
atom(sb).
atom(sc).


% *** AGENTS ***
agent(a).
agent(b).
agent(c).


% *** ACTIONS ***
action(left_a).
action_type(left_a, ontic).
causes(left_a, at_a_1, true).
causes(left_a, at_a_2, false).
action_pre(left_a, at_a_2).
obs_cond(left_a, a, f_obs, true).
obs_cond(left_a, b, f_obs, at_b_2).
obs_cond(left_a, c, f_obs, at_c_2).
obs_cond(left_a, b, obl  , neg(at_b_2)).
obs_cond(left_a, c, obl  , neg(at_c_2)).


action(left_b).
action_type(left_b, ontic).
causes(left_b, at_b_1, true).
causes(left_b, at_b_2, false).
action_pre(left_b, at_b_2).
obs_cond(left_b, a, f_obs, at_a_2).
obs_cond(left_b, b, f_obs, true).
obs_cond(left_b, c, f_obs, at_c_2).
obs_cond(left_b, a, obl  , neg(at_a_2)).
obs_cond(left_b, c, obl  , neg(at_c_2)).


action(left_c).
action_type(left_c, ontic).
causes(left_c, at_c_1, true).
causes(left_c, at_c_2, false).
action_pre(left_c, at_c_2).
obs_cond(left_c, a, f_obs, at_a_2).
obs_cond(left_c, b, f_obs, at_b_2).
obs_cond(left_c, c, f_obs, true).
obs_cond(left_c, a, obl  , neg(at_a_2)).
obs_cond(left_c, b, obl  , neg(at_b_2)).


action(right_a).
action_type(right_a, ontic).
causes(right_a, at_a_1, false).
causes(right_a, at_a_2, true).
action_pre(right_a, at_a_1).
obs_cond(right_a, a, f_obs, true).
obs_cond(right_a, b, f_obs, at_b_1).
obs_cond(right_a, c, f_obs, at_c_1).
obs_cond(right_a, b, obl  , neg(at_b_1)).
obs_cond(right_a, c, obl  , neg(at_c_1)).


action(right_b).
action_type(right_b, ontic).
causes(right_b, at_b_1, false).
causes(right_b, at_b_2, true).
action_pre(right_b, at_b_1).
obs_cond(right_b, a, f_obs, at_a_1).
obs_cond(right_b, b, f_obs, true).
obs_cond(right_b, c, f_obs, at_c_1).
obs_cond(right_b, a, obl  , neg(at_a_1)).
obs_cond(right_b, c, obl  , neg(at_c_1)).


action(right_c).
action_type(right_c, ontic).
causes(right_c, at_c_1, false).
causes(right_c, at_c_2, true).
action_pre(right_c, at_c_1).
obs_cond(right_c, a, f_obs, at_a_1).
obs_cond(right_c, b, f_obs, at_b_1).
obs_cond(right_c, c, f_obs, true).
obs_cond(right_c, a, obl  , neg(at_a_1)).
obs_cond(right_c, b, obl  , neg(at_b_1)).


action(share_a_sa_1).
action_type(share_a_sa_1, announcement).
announces(share_a_sa_1, sa).
action_pre(share_a_sa_1, and(neg(dia(a,neg(sa))),at_a_1)).
obs_cond(share_a_sa_1, a, f_obs, true).
obs_cond(share_a_sa_1, b, f_obs, at_b_1).
obs_cond(share_a_sa_1, b, obl  , neg(at_b_1)).
obs_cond(share_a_sa_1, c, f_obs, at_c_1).
obs_cond(share_a_sa_1, c, obl  , neg(at_c_1)).


action(share_a_sa_2).
action_type(share_a_sa_2, announcement).
announces(share_a_sa_2, sa).
action_pre(share_a_sa_2, and(neg(dia(a,neg(sa))),at_a_2)).
obs_cond(share_a_sa_2, a, f_obs, true).
obs_cond(share_a_sa_2, b, f_obs, at_b_2).
obs_cond(share_a_sa_2, b, obl  , neg(at_b_2)).
obs_cond(share_a_sa_2, c, f_obs, at_c_2).
obs_cond(share_a_sa_2, c, obl  , neg(at_c_2)).


action(share_a_sb_1).
action_type(share_a_sb_1, announcement).
announces(share_a_sb_1, sb).
action_pre(share_a_sb_1, and(neg(dia(a,neg(sb))),at_a_1)).
obs_cond(share_a_sb_1, a, f_obs, true).
obs_cond(share_a_sb_1, b, f_obs, at_b_1).
obs_cond(share_a_sb_1, b, obl  , neg(at_b_1)).
obs_cond(share_a_sb_1, c, f_obs, at_c_1).
obs_cond(share_a_sb_1, c, obl  , neg(at_c_1)).


action(share_a_sb_2).
action_type(share_a_sb_2, announcement).
announces(share_a_sb_2, sb).
action_pre(share_a_sb_2, and(neg(dia(a,neg(sb))),at_a_2)).
obs_cond(share_a_sb_2, a, f_obs, true).
obs_cond(share_a_sb_2, b, f_obs, at_b_2).
obs_cond(share_a_sb_2, b, obl  , neg(at_b_2)).
obs_cond(share_a_sb_2, c, f_obs, at_c_2).
obs_cond(share_a_sb_2, c, obl  , neg(at_c_2)).


action(share_a_sc_1).
action_type(share_a_sc_1, announcement).
announces(share_a_sc_1, sc).
action_pre(share_a_sc_1, and(neg(dia(a,neg(sc))),at_a_1)).
obs_cond(share_a_sc_1, a, f_obs, true).
obs_cond(share_a_sc_1, b, f_obs, at_b_1).
obs_cond(share_a_sc_1, b, obl  , neg(at_b_1)).
obs_cond(share_a_sc_1, c, f_obs, at_c_1).
obs_cond(share_a_sc_1, c, obl  , neg(at_c_1)).


action(share_a_sc_2).
action_type(share_a_sc_2, announcement).
announces(share_a_sc_2, sc).
action_pre(share_a_sc_2, and(neg(dia(a,neg(sc))),at_a_2)).
obs_cond(share_a_sc_2, a, f_obs, true).
obs_cond(share_a_sc_2, b, f_obs, at_b_2).
obs_cond(share_a_sc_2, b, obl  , neg(at_b_2)).
obs_cond(share_a_sc_2, c, f_obs, at_c_2).
obs_cond(share_a_sc_2, c, obl  , neg(at_c_2)).


action(share_b_sa_1).
action_type(share_b_sa_1, announcement).
announces(share_b_sa_1, sa).
action_pre(share_b_sa_1, and(neg(dia(b,neg(sa))),at_b_1)).
obs_cond(share_b_sa_1, a, f_obs, at_a_1).
obs_cond(share_b_sa_1, a, obl  , neg(at_a_1)).
obs_cond(share_b_sa_1, b, f_obs, true).
obs_cond(share_b_sa_1, c, f_obs, at_c_1).
obs_cond(share_b_sa_1, c, obl  , neg(at_c_1)).


action(share_b_sa_2).
action_type(share_b_sa_2, announcement).
announces(share_b_sa_2, sa).
action_pre(share_b_sa_2, and(neg(dia(b,neg(sa))),at_b_2)).
obs_cond(share_b_sa_2, a, f_obs, at_a_2).
obs_cond(share_b_sa_2, a, obl  , neg(at_a_2)).
obs_cond(share_b_sa_2, b, f_obs, true).
obs_cond(share_b_sa_2, c, f_obs, at_c_2).
obs_cond(share_b_sa_2, c, obl  , neg(at_c_2)).


action(share_b_sb_1).
action_type(share_b_sb_1, announcement).
announces(share_b_sb_1, sb).
action_pre(share_b_sb_1, and(neg(dia(b,neg(sb))),at_b_1)).
obs_cond(share_b_sb_1, a, f_obs, at_a_1).
obs_cond(share_b_sb_1, a, obl  , neg(at_a_1)).
obs_cond(share_b_sb_1, b, f_obs, true).
obs_cond(share_b_sb_1, c, f_obs, at_c_1).
obs_cond(share_b_sb_1, c, obl  , neg(at_c_1)).


action(share_b_sb_2).
action_type(share_b_sb_2, announcement).
announces(share_b_sb_2, sb).
action_pre(share_b_sb_2, and(neg(dia(b,neg(sb))),at_b_2)).
obs_cond(share_b_sb_2, a, f_obs, at_a_2).
obs_cond(share_b_sb_2, a, obl  , neg(at_a_2)).
obs_cond(share_b_sb_2, b, f_obs, true).
obs_cond(share_b_sb_2, c, f_obs, at_c_2).
obs_cond(share_b_sb_2, c, obl  , neg(at_c_2)).


action(share_b_sc_1).
action_type(share_b_sc_1, announcement).
announces(share_b_sc_1, sc).
action_pre(share_b_sc_1, and(neg(dia(b,neg(sc))),at_b_1)).
obs_cond(share_b_sc_1, a, f_obs, at_a_1).
obs_cond(share_b_sc_1, a, obl  , neg(at_a_1)).
obs_cond(share_b_sc_1, b, f_obs, true).
obs_cond(share_b_sc_1, c, f_obs, at_c_1).
obs_cond(share_b_sc_1, c, obl  , neg(at_c_1)).


action(share_b_sc_2).
action_type(share_b_sc_2, announcement).
announces(share_b_sc_2, sc).
action_pre(share_b_sc_2, and(neg(dia(b,neg(sc))),at_b_2)).
obs_cond(share_b_sc_2, a, f_obs, at_a_2).
obs_cond(share_b_sc_2, a, obl  , neg(at_a_2)).
obs_cond(share_b_sc_2, b, f_obs, true).
obs_cond(share_b_sc_2, c, f_obs, at_c_2).
obs_cond(share_b_sc_2, c, obl  , neg(at_c_2)).


action(share_c_sa_1).
action_type(share_c_sa_1, announcement).
announces(share_c_sa_1, sa).
action_pre(share_c_sa_1, and(neg(dia(c,neg(sa))),at_c_1)).
obs_cond(share_c_sa_1, a, f_obs, at_a_1).
obs_cond(share_c_sa_1, a, obl  , neg(at_a_1)).
obs_cond(share_c_sa_1, b, f_obs, at_b_1).
obs_cond(share_c_sa_1, b, obl  , neg(at_b_1)).
obs_cond(share_c_sa_1, c, f_obs, true).


action(share_c_sa_2).
action_type(share_c_sa_2, announcement).
announces(share_c_sa_2, sa).
action_pre(share_c_sa_2, and(neg(dia(c,neg(sa))),at_c_2)).
obs_cond(share_c_sa_2, a, f_obs, at_a_2).
obs_cond(share_c_sa_2, a, obl  , neg(at_a_2)).
obs_cond(share_c_sa_2, b, f_obs, at_b_2).
obs_cond(share_c_sa_2, b, obl  , neg(at_b_2)).
obs_cond(share_c_sa_2, c, f_obs, true).


action(share_c_sb_1).
action_type(share_c_sb_1, announcement).
announces(share_c_sb_1, sb).
action_pre(share_c_sb_1, and(neg(dia(c,neg(sb))),at_c_1)).
obs_cond(share_c_sb_1, a, f_obs, at_a_1).
obs_cond(share_c_sb_1, a, obl  , neg(at_a_1)).
obs_cond(share_c_sb_1, b, f_obs, at_b_1).
obs_cond(share_c_sb_1, b, obl  , neg(at_b_1)).
obs_cond(share_c_sb_1, c, f_obs, true).


action(share_c_sb_2).
action_type(share_c_sb_2, announcement).
announces(share_c_sb_2, sb).
action_pre(share_c_sb_2, and(neg(dia(c,neg(sb))),at_c_2)).
obs_cond(share_c_sb_2, a, f_obs, at_a_2).
obs_cond(share_c_sb_2, a, obl  , neg(at_a_2)).
obs_cond(share_c_sb_2, b, f_obs, at_b_2).
obs_cond(share_c_sb_2, b, obl  , neg(at_b_2)).
obs_cond(share_c_sb_2, c, f_obs, true).


action(share_c_sc_1).
action_type(share_c_sc_1, announcement).
announces(share_c_sc_1, sc).
action_pre(share_c_sc_1, and(neg(dia(c,neg(sc))),at_c_1)).
obs_cond(share_c_sc_1, a, f_obs, at_a_1).
obs_cond(share_c_sc_1, a, obl  , neg(at_a_1)).
obs_cond(share_c_sc_1, b, f_obs, at_b_1).
obs_cond(share_c_sc_1, b, obl  , neg(at_b_1)).
obs_cond(share_c_sc_1, c, f_obs, true).


action(share_c_sc_2).
action_type(share_c_sc_2, announcement).
announces(share_c_sc_2, sc).
action_pre(share_c_sc_2, and(neg(dia(c,neg(sc))),at_c_2)).
obs_cond(share_c_sc_2, a, f_obs, at_a_2).
obs_cond(share_c_sc_2, a, obl  , neg(at_a_2)).
obs_cond(share_c_sc_2, b, f_obs, at_b_2).
obs_cond(share_c_sc_2, b, obl  , neg(at_b_2)).
obs_cond(share_c_sc_2, c, f_obs, true).




% *** INITIAL STATE ***
w_init(w0). w_init(w1). w_init(w2). w_init(w3).
w_init(w4). w_init(w5). w_init(w6). w_init(w7).

r_init(W, W, AG) :- w_init(W), agent(AG).

r_init(W1, W2, a) :- w_init(W1), w_init(W2), W1 != W2,     v_init(W1, sa),     v_init(W2, sa).
r_init(W1, W2, a) :- w_init(W1), w_init(W2), W1 != W2, not v_init(W1, sa), not v_init(W2, sa).

r_init(W1, W2, b) :- w_init(W1), w_init(W2), W1 != W2,     v_init(W1, sb),     v_init(W2, sb).
r_init(W1, W2, b) :- w_init(W1), w_init(W2), W1 != W2, not v_init(W1, sb), not v_init(W2, sb).

r_init(W1, W2, c) :- w_init(W1), w_init(W2), W1 != W2,     v_init(W1, sc),     v_init(W2, sc).
r_init(W1, W2, c) :- w_init(W1), w_init(W2), W1 != W2, not v_init(W1, sc), not v_init(W2, sc).

v_init(W, at_a_1) :- w_init(W).
v_init(W, at_b_1) :- w_init(W).
v_init(W, at_c_1) :- w_init(W).

v_init(w0, sa).
v_init(w0, sb).
v_init(w0, sc).

v_init(w1, sa).
v_init(w1, sb).

v_init(w2, sa).
v_init(w2, sc).

v_init(w3, sb).
v_init(w3, sc).

v_init(w4, sa).

v_init(w5, sb).

v_init(w6, sc).

dw_init(w0).
