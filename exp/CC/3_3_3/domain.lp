#include "../../actions.lp".

% *** ATOMS ***
atom(at_a_room1).
atom(at_a_room2).
atom(at_a_room3).
atom(at_box1_room1).
atom(at_box1_room3).
atom(at_box2_room1).
atom(at_box2_room3).
atom(at_box3_room1).
atom(at_box3_room3).
atom(at_b_room1).
atom(at_b_room2).
atom(at_b_room3).
atom(at_c_room1).
atom(at_c_room2).
atom(at_c_room3).


% *** AGENTS ***
agent(a).
agent(b).
agent(c).


% *** ACTIONS ***
action(a_check_b1_1).
action_type(a_check_b1_1, sensing).
determines(a_check_b1_1, at_box1_room1).
action_pre(a_check_b1_1, at_a_room1).
obs_cond(a_check_b1_1, a, f_obs, true).
obs_cond(a_check_b1_1, b, obl  , true).
obs_cond(a_check_b1_1, c, obl  , true).


action(a_check_b1_3).
action_type(a_check_b1_3, sensing).
determines(a_check_b1_3, at_box1_room3).
action_pre(a_check_b1_3, at_a_room3).
obs_cond(a_check_b1_3, a, f_obs, true).
obs_cond(a_check_b1_3, b, obl  , true).
obs_cond(a_check_b1_3, c, obl  , true).


action(a_check_b2_1).
action_type(a_check_b2_1, sensing).
determines(a_check_b2_1, at_box2_room1).
action_pre(a_check_b2_1, at_a_room1).
obs_cond(a_check_b2_1, a, f_obs, true).
obs_cond(a_check_b2_1, b, obl  , true).
obs_cond(a_check_b2_1, c, obl  , true).


action(a_check_b2_3).
action_type(a_check_b2_3, sensing).
determines(a_check_b2_3, at_box2_room3).
action_pre(a_check_b2_3, at_a_room3).
obs_cond(a_check_b2_3, a, f_obs, true).
obs_cond(a_check_b2_3, b, obl  , true).
obs_cond(a_check_b2_3, c, obl  , true).


action(a_check_b3_1).
action_type(a_check_b3_1, sensing).
determines(a_check_b3_1, at_box3_room1).
action_pre(a_check_b3_1, at_a_room1).
obs_cond(a_check_b3_1, a, f_obs, true).
obs_cond(a_check_b3_1, b, obl  , true).
obs_cond(a_check_b3_1, c, obl  , true).


action(a_check_b3_3).
action_type(a_check_b3_3, sensing).
determines(a_check_b3_3, at_box3_room3).
action_pre(a_check_b3_3, at_a_room3).
obs_cond(a_check_b3_3, a, f_obs, true).
obs_cond(a_check_b3_3, b, obl  , true).
obs_cond(a_check_b3_3, c, obl  , true).


action(b_check_b1_1).
action_type(b_check_b1_1, sensing).
determines(b_check_b1_1, at_box1_room1).
action_pre(b_check_b1_1, at_b_room1).
obs_cond(b_check_b1_1, b, f_obs, true).
obs_cond(b_check_b1_1, a, obl  , true).
obs_cond(b_check_b1_1, c, obl  , true).


action(b_check_b1_3).
action_type(b_check_b1_3, sensing).
determines(b_check_b1_3, at_box1_room3).
action_pre(b_check_b1_3, at_b_room3).
obs_cond(b_check_b1_3, b, f_obs, true).
obs_cond(b_check_b1_3, a, obl  , true).
obs_cond(b_check_b1_3, c, obl  , true).


action(b_check_b2_1).
action_type(b_check_b2_1, sensing).
determines(b_check_b2_1, at_box2_room1).
action_pre(b_check_b2_1, at_b_room1).
obs_cond(b_check_b2_1, b, f_obs, true).
obs_cond(b_check_b2_1, a, obl  , true).
obs_cond(b_check_b2_1, c, obl  , true).


action(b_check_b2_3).
action_type(b_check_b2_3, sensing).
determines(b_check_b2_3, at_box2_room3).
action_pre(b_check_b2_3, at_b_room3).
obs_cond(b_check_b2_3, b, f_obs, true).
obs_cond(b_check_b2_3, a, obl  , true).
obs_cond(b_check_b2_3, c, obl  , true).


action(b_check_b3_1).
action_type(b_check_b3_1, sensing).
determines(b_check_b3_1, at_box3_room1).
action_pre(b_check_b3_1, at_b_room1).
obs_cond(b_check_b3_1, b, f_obs, true).
obs_cond(b_check_b3_1, a, obl  , true).
obs_cond(b_check_b3_1, c, obl  , true).


action(b_check_b3_3).
action_type(b_check_b3_3, sensing).
determines(b_check_b3_3, at_box3_room3).
action_pre(b_check_b3_3, at_b_room3).
obs_cond(b_check_b3_3, b, f_obs, true).
obs_cond(b_check_b3_3, a, obl  , true).
obs_cond(b_check_b3_3, c, obl  , true).


action(c_check_b1_1).
action_type(c_check_b1_1, sensing).
determines(c_check_b1_1, at_box1_room1).
action_pre(c_check_b1_1, at_c_room1).
obs_cond(c_check_b1_1, c, f_obs, true).
obs_cond(c_check_b1_1, a, obl  , true).
obs_cond(c_check_b1_1, b, obl  , true).


action(c_check_b1_3).
action_type(c_check_b1_3, sensing).
determines(c_check_b1_3, at_box1_room3).
action_pre(c_check_b1_3, at_c_room3).
obs_cond(c_check_b1_3, c, f_obs, true).
obs_cond(c_check_b1_3, a, obl  , true).
obs_cond(c_check_b1_3, b, obl  , true).


action(c_check_b2_1).
action_type(c_check_b2_1, sensing).
determines(c_check_b2_1, at_box2_room1).
action_pre(c_check_b2_1, at_c_room1).
obs_cond(c_check_b2_1, c, f_obs, true).
obs_cond(c_check_b2_1, a, obl  , true).
obs_cond(c_check_b2_1, b, obl  , true).


action(c_check_b2_3).
action_type(c_check_b2_3, sensing).
determines(c_check_b2_3, at_box2_room3).
action_pre(c_check_b2_3, at_c_room3).
obs_cond(c_check_b2_3, c, f_obs, true).
obs_cond(c_check_b2_3, a, obl  , true).
obs_cond(c_check_b2_3, b, obl  , true).


action(c_check_b3_1).
action_type(c_check_b3_1, sensing).
determines(c_check_b3_1, at_box3_room1).
action_pre(c_check_b3_1, at_c_room1).
obs_cond(c_check_b3_1, c, f_obs, true).
obs_cond(c_check_b3_1, a, obl  , true).
obs_cond(c_check_b3_1, b, obl  , true).


action(c_check_b3_3).
action_type(c_check_b3_3, sensing).
determines(c_check_b3_3, at_box3_room3).
action_pre(c_check_b3_3, at_c_room3).
obs_cond(c_check_b3_3, c, f_obs, true).
obs_cond(c_check_b3_3, a, obl  , true).
obs_cond(c_check_b3_3, b, obl  , true).


action(left_a).
action_type(left_a, ontic).
causes(left_a, at_a_room1, at_a_room2).
causes(left_a, at_a_room2, at_a_room3).
causes(left_a, at_a_room3, false).
action_pre(left_a, neg(at_a_room1)).
obs_cond(left_a, a, f_obs, true).
obs_cond(left_a, b, f_obs, true).
obs_cond(left_a, c, f_obs, true).


action(left_b).
action_type(left_b, ontic).
causes(left_b, at_b_room1, at_b_room2).
causes(left_b, at_b_room2, at_b_room3).
causes(left_b, at_b_room3, false).
action_pre(left_b, neg(at_b_room1)).
obs_cond(left_b, a, f_obs, true).
obs_cond(left_b, b, f_obs, true).
obs_cond(left_b, c, f_obs, true).


action(left_c).
action_type(left_c, ontic).
causes(left_c, at_c_room1, at_c_room2).
causes(left_c, at_c_room2, at_c_room3).
causes(left_c, at_c_room3, false).
action_pre(left_c, neg(at_c_room1)).
obs_cond(left_c, a, f_obs, true).
obs_cond(left_c, b, f_obs, true).
obs_cond(left_c, c, f_obs, true).


action(right_a).
action_type(right_a, ontic).
causes(right_a, at_a_room1, false).
causes(right_a, at_a_room2, at_a_room1).
causes(right_a, at_a_room3, at_a_room2).
action_pre(right_a, neg(at_a_room3)).
obs_cond(right_a, a, f_obs, true).
obs_cond(right_a, b, f_obs, true).
obs_cond(right_a, c, f_obs, true).


action(right_b).
action_type(right_b, ontic).
causes(right_b, at_b_room1, false).
causes(right_b, at_b_room2, at_b_room1).
causes(right_b, at_b_room3, at_b_room2).
action_pre(right_b, neg(at_b_room3)).
obs_cond(right_b, a, f_obs, true).
obs_cond(right_b, b, f_obs, true).
obs_cond(right_b, c, f_obs, true).


action(right_c).
action_type(right_c, ontic).
causes(right_c, at_c_room1, false).
causes(right_c, at_c_room2, at_c_room1).
causes(right_c, at_c_room3, at_c_room2).
action_pre(right_c, neg(at_c_room3)).
obs_cond(right_c, a, f_obs, true).
obs_cond(right_c, b, f_obs, true).
obs_cond(right_c, c, f_obs, true).


action(tell_a_b1_1).
action_type(tell_a_b1_1, announcement).
announces(tell_a_b1_1, at_box1_room1).
action_pre(tell_a_b1_1, neg(dia(a,neg(at_box1_room1)))).
obs_cond(tell_a_b1_1, a, f_obs, true).
obs_cond(tell_a_b1_1, b, f_obs, true).
obs_cond(tell_a_b1_1, c, f_obs, true).


action(tell_a_b1_3).
action_type(tell_a_b1_3, announcement).
announces(tell_a_b1_3, at_box1_room3).
action_pre(tell_a_b1_3, neg(dia(a,neg(at_box1_room3)))).
obs_cond(tell_a_b1_3, a, f_obs, true).
obs_cond(tell_a_b1_3, b, f_obs, true).
obs_cond(tell_a_b1_3, c, f_obs, true).


action(tell_a_b2_1).
action_type(tell_a_b2_1, announcement).
announces(tell_a_b2_1, at_box2_room1).
action_pre(tell_a_b2_1, neg(dia(a,neg(at_box2_room1)))).
obs_cond(tell_a_b2_1, a, f_obs, true).
obs_cond(tell_a_b2_1, b, f_obs, true).
obs_cond(tell_a_b2_1, c, f_obs, true).


action(tell_a_b2_3).
action_type(tell_a_b2_3, announcement).
announces(tell_a_b2_3, at_box2_room3).
action_pre(tell_a_b2_3, neg(dia(a,neg(at_box2_room3)))).
obs_cond(tell_a_b2_3, a, f_obs, true).
obs_cond(tell_a_b2_3, b, f_obs, true).
obs_cond(tell_a_b2_3, c, f_obs, true).


action(tell_a_b3_1).
action_type(tell_a_b3_1, announcement).
announces(tell_a_b3_1, at_box3_room1).
action_pre(tell_a_b3_1, neg(dia(a,neg(at_box3_room1)))).
obs_cond(tell_a_b3_1, a, f_obs, true).
obs_cond(tell_a_b3_1, b, f_obs, true).
obs_cond(tell_a_b3_1, c, f_obs, true).


action(tell_a_b3_3).
action_type(tell_a_b3_3, announcement).
announces(tell_a_b3_3, at_box3_room3).
action_pre(tell_a_b3_3, neg(dia(a,neg(at_box3_room3)))).
obs_cond(tell_a_b3_3, a, f_obs, true).
obs_cond(tell_a_b3_3, b, f_obs, true).
obs_cond(tell_a_b3_3, c, f_obs, true).


action(tell_b_b1_1).
action_type(tell_b_b1_1, announcement).
announces(tell_b_b1_1, at_box1_room1).
action_pre(tell_b_b1_1, neg(dia(b,neg(at_box1_room1)))).
obs_cond(tell_b_b1_1, a, f_obs, true).
obs_cond(tell_b_b1_1, b, f_obs, true).
obs_cond(tell_b_b1_1, c, f_obs, true).


action(tell_b_b1_3).
action_type(tell_b_b1_3, announcement).
announces(tell_b_b1_3, at_box1_room3).
action_pre(tell_b_b1_3, neg(dia(b,neg(at_box1_room3)))).
obs_cond(tell_b_b1_3, a, f_obs, true).
obs_cond(tell_b_b1_3, b, f_obs, true).
obs_cond(tell_b_b1_3, c, f_obs, true).


action(tell_b_b2_1).
action_type(tell_b_b2_1, announcement).
announces(tell_b_b2_1, at_box2_room1).
action_pre(tell_b_b2_1, neg(dia(b,neg(at_box2_room1)))).
obs_cond(tell_b_b2_1, a, f_obs, true).
obs_cond(tell_b_b2_1, b, f_obs, true).
obs_cond(tell_b_b2_1, c, f_obs, true).


action(tell_b_b2_3).
action_type(tell_b_b2_3, announcement).
announces(tell_b_b2_3, at_box2_room3).
action_pre(tell_b_b2_3, neg(dia(b,neg(at_box2_room3)))).
obs_cond(tell_b_b2_3, a, f_obs, true).
obs_cond(tell_b_b2_3, b, f_obs, true).
obs_cond(tell_b_b2_3, c, f_obs, true).


action(tell_b_b3_1).
action_type(tell_b_b3_1, announcement).
announces(tell_b_b3_1, at_box3_room1).
action_pre(tell_b_b3_1, neg(dia(b,neg(at_box3_room1)))).
obs_cond(tell_b_b3_1, a, f_obs, true).
obs_cond(tell_b_b3_1, b, f_obs, true).
obs_cond(tell_b_b3_1, c, f_obs, true).


action(tell_b_b3_3).
action_type(tell_b_b3_3, announcement).
announces(tell_b_b3_3, at_box3_room3).
action_pre(tell_b_b3_3, neg(dia(b,neg(at_box3_room3)))).
obs_cond(tell_b_b3_3, a, f_obs, true).
obs_cond(tell_b_b3_3, b, f_obs, true).
obs_cond(tell_b_b3_3, c, f_obs, true).


action(tell_c_b1_1).
action_type(tell_c_b1_1, announcement).
announces(tell_c_b1_1, at_box1_room1).
action_pre(tell_c_b1_1, neg(dia(c,neg(at_box1_room1)))).
obs_cond(tell_c_b1_1, a, f_obs, true).
obs_cond(tell_c_b1_1, b, f_obs, true).
obs_cond(tell_c_b1_1, c, f_obs, true).


action(tell_c_b1_3).
action_type(tell_c_b1_3, announcement).
announces(tell_c_b1_3, at_box1_room3).
action_pre(tell_c_b1_3, neg(dia(c,neg(at_box1_room3)))).
obs_cond(tell_c_b1_3, a, f_obs, true).
obs_cond(tell_c_b1_3, b, f_obs, true).
obs_cond(tell_c_b1_3, c, f_obs, true).


action(tell_c_b2_1).
action_type(tell_c_b2_1, announcement).
announces(tell_c_b2_1, at_box2_room1).
action_pre(tell_c_b2_1, neg(dia(c,neg(at_box2_room1)))).
obs_cond(tell_c_b2_1, a, f_obs, true).
obs_cond(tell_c_b2_1, b, f_obs, true).
obs_cond(tell_c_b2_1, c, f_obs, true).


action(tell_c_b2_3).
action_type(tell_c_b2_3, announcement).
announces(tell_c_b2_3, at_box2_room3).
action_pre(tell_c_b2_3, neg(dia(c,neg(at_box2_room3)))).
obs_cond(tell_c_b2_3, a, f_obs, true).
obs_cond(tell_c_b2_3, b, f_obs, true).
obs_cond(tell_c_b2_3, c, f_obs, true).


action(tell_c_b3_1).
action_type(tell_c_b3_1, announcement).
announces(tell_c_b3_1, at_box3_room1).
action_pre(tell_c_b3_1, neg(dia(c,neg(at_box3_room1)))).
obs_cond(tell_c_b3_1, a, f_obs, true).
obs_cond(tell_c_b3_1, b, f_obs, true).
obs_cond(tell_c_b3_1, c, f_obs, true).


action(tell_c_b3_3).
action_type(tell_c_b3_3, announcement).
announces(tell_c_b3_3, at_box3_room3).
action_pre(tell_c_b3_3, neg(dia(c,neg(at_box3_room3)))).
obs_cond(tell_c_b3_3, a, f_obs, true).
obs_cond(tell_c_b3_3, b, f_obs, true).
obs_cond(tell_c_b3_3, c, f_obs, true).




% *** INITIAL STATE ***

w_init(w0). w_init(w1). w_init(w2). w_init(w3).
w_init(w4). w_init(w5). w_init(w6). w_init(w7).

r_init(W1, W2, AG) :- w_init(W1), w_init(W2), agent(AG).

v_init(W, at_a_room2) :- w_init(W).
v_init(W, at_b_room2) :- w_init(W).
v_init(W, at_c_room2) :- w_init(W).

v_init(w0, at_box1_room1).
v_init(w0, at_box2_room1).
v_init(w0, at_box3_room1).

v_init(w1, at_box1_room1).
v_init(w1, at_box2_room1).
v_init(w1, at_box3_room3).

v_init(w2, at_box1_room1).
v_init(w2, at_box2_room3).
v_init(w2, at_box3_room1).

v_init(w3, at_box1_room1).
v_init(w3, at_box2_room3).
v_init(w3, at_box3_room3).

v_init(w4, at_box1_room3).
v_init(w4, at_box2_room1).
v_init(w4, at_box3_room1).

v_init(w5, at_box1_room3).
v_init(w5, at_box2_room1).
v_init(w5, at_box3_room3).

v_init(w6, at_box1_room3).
v_init(w6, at_box2_room3).
v_init(w6, at_box3_room1).

v_init(w7, at_box1_room3).
v_init(w7, at_box2_room3).
v_init(w7, at_box3_room3).

dw_init(w3).
