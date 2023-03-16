#include "../../actions.lp".

% *** ATOMS ***
atom(at_a_1).
atom(at_a_2).
atom(at_b_1).
atom(at_b_2).
atom(at_c_1).
atom(at_c_2).
atom(at_d_1).
atom(at_d_2).
atom(at_e_1).
atom(at_e_2).
atom(sa).
atom(sb).
atom(sc).
atom(sd).
atom(se).


% *** AGENTS ***
agent(a).
agent(b).
agent(c).
agent(d).
agent(e).


% *** ACTIONS ***
action(left_a).
action_type(left_a, ontic).
causes(left_a, at_a_1, true).
causes(left_a, at_a_2, false).
action_pre(left_a, at_a_2).
obs_cond(left_a, a, f_obs, true).
obs_cond(left_a, b, f_obs, at_b_2).
obs_cond(left_a, c, f_obs, at_c_2).
obs_cond(left_a, d, f_obs, at_d_2).
obs_cond(left_a, e, f_obs, at_e_2).
obs_cond(left_a, b, obl  , neg(at_b_2)).
obs_cond(left_a, c, obl  , neg(at_c_2)).
obs_cond(left_a, d, obl  , neg(at_d_2)).
obs_cond(left_a, e, obl  , neg(at_e_2)).


action(left_b).
action_type(left_b, ontic).
causes(left_b, at_b_1, true).
causes(left_b, at_b_2, false).
action_pre(left_b, at_b_2).
obs_cond(left_b, a, f_obs, at_a_2).
obs_cond(left_b, b, f_obs, true).
obs_cond(left_b, c, f_obs, at_c_2).
obs_cond(left_b, d, f_obs, at_d_2).
obs_cond(left_b, e, f_obs, at_e_2).
obs_cond(left_b, a, obl  , neg(at_a_2)).
obs_cond(left_b, c, obl  , neg(at_c_2)).
obs_cond(left_b, d, obl  , neg(at_d_2)).
obs_cond(left_b, e, obl  , neg(at_e_2)).


action(left_c).
action_type(left_c, ontic).
causes(left_c, at_c_1, true).
causes(left_c, at_c_2, false).
action_pre(left_c, at_c_2).
obs_cond(left_c, a, f_obs, at_a_2).
obs_cond(left_c, b, f_obs, at_b_2).
obs_cond(left_c, c, f_obs, true).
obs_cond(left_c, d, f_obs, at_d_2).
obs_cond(left_c, e, f_obs, at_e_2).
obs_cond(left_c, a, obl  , neg(at_a_2)).
obs_cond(left_c, b, obl  , neg(at_b_2)).
obs_cond(left_c, d, obl  , neg(at_d_2)).
obs_cond(left_c, e, obl  , neg(at_e_2)).


action(left_d).
action_type(left_d, ontic).
causes(left_d, at_d_1, true).
causes(left_d, at_d_2, false).
action_pre(left_d, at_d_2).
obs_cond(left_d, a, f_obs, at_a_2).
obs_cond(left_d, b, f_obs, at_b_2).
obs_cond(left_d, c, f_obs, at_c_2).
obs_cond(left_d, d, f_obs, true).
obs_cond(left_d, e, f_obs, at_e_2).
obs_cond(left_d, a, obl  , neg(at_a_2)).
obs_cond(left_d, b, obl  , neg(at_b_2)).
obs_cond(left_d, c, obl  , neg(at_c_2)).
obs_cond(left_d, e, obl  , neg(at_e_2)).


action(left_e).
action_type(left_e, ontic).
causes(left_e, at_e_1, true).
causes(left_e, at_e_2, false).
action_pre(left_e, at_e_2).
obs_cond(left_e, a, f_obs, at_a_2).
obs_cond(left_e, b, f_obs, at_b_2).
obs_cond(left_e, c, f_obs, at_c_2).
obs_cond(left_e, d, f_obs, at_d_2).
obs_cond(left_e, e, f_obs, true).
obs_cond(left_e, a, obl  , neg(at_a_2)).
obs_cond(left_e, b, obl  , neg(at_b_2)).
obs_cond(left_e, c, obl  , neg(at_c_2)).
obs_cond(left_e, d, obl  , neg(at_d_2)).


action(right_a).
action_type(right_a, ontic).
causes(right_a, at_a_1, false).
causes(right_a, at_a_2, true).
action_pre(right_a, at_a_1).
obs_cond(right_a, a, f_obs, true).
obs_cond(right_a, b, f_obs, at_b_1).
obs_cond(right_a, c, f_obs, at_c_1).
obs_cond(right_a, d, f_obs, at_d_1).
obs_cond(right_a, e, f_obs, at_e_1).
obs_cond(right_a, b, obl  , neg(at_b_1)).
obs_cond(right_a, c, obl  , neg(at_c_1)).
obs_cond(right_a, d, obl  , neg(at_d_1)).
obs_cond(right_a, e, obl  , neg(at_e_1)).


action(right_b).
action_type(right_b, ontic).
causes(right_b, at_b_1, false).
causes(right_b, at_b_2, true).
action_pre(right_b, at_b_1).
obs_cond(right_b, a, f_obs, at_a_1).
obs_cond(right_b, b, f_obs, true).
obs_cond(right_b, c, f_obs, at_c_1).
obs_cond(right_b, d, f_obs, at_d_1).
obs_cond(right_b, e, f_obs, at_e_1).
obs_cond(right_b, a, obl  , neg(at_a_1)).
obs_cond(right_b, c, obl  , neg(at_c_1)).
obs_cond(right_b, d, obl  , neg(at_d_1)).
obs_cond(right_b, e, obl  , neg(at_e_1)).


action(right_c).
action_type(right_c, ontic).
causes(right_c, at_c_1, false).
causes(right_c, at_c_2, true).
action_pre(right_c, at_c_1).
obs_cond(right_c, a, f_obs, at_a_1).
obs_cond(right_c, b, f_obs, at_b_1).
obs_cond(right_c, c, f_obs, true).
obs_cond(right_c, d, f_obs, at_d_1).
obs_cond(right_c, e, f_obs, at_e_1).
obs_cond(right_c, a, obl  , neg(at_a_1)).
obs_cond(right_c, b, obl  , neg(at_b_1)).
obs_cond(right_c, d, obl  , neg(at_d_1)).
obs_cond(right_c, e, obl  , neg(at_e_1)).


action(right_d).
action_type(right_d, ontic).
causes(right_d, at_d_1, false).
causes(right_d, at_d_2, true).
action_pre(right_d, at_d_1).
obs_cond(right_d, a, f_obs, at_a_1).
obs_cond(right_d, b, f_obs, at_b_1).
obs_cond(right_d, c, f_obs, at_c_1).
obs_cond(right_d, d, f_obs, true).
obs_cond(right_d, e, f_obs, at_e_1).
obs_cond(right_d, a, obl  , neg(at_a_1)).
obs_cond(right_d, b, obl  , neg(at_b_1)).
obs_cond(right_d, c, obl  , neg(at_c_1)).
obs_cond(right_d, e, obl  , neg(at_e_1)).


action(right_e).
action_type(right_e, ontic).
causes(right_e, at_e_1, false).
causes(right_e, at_e_2, true).
action_pre(right_e, at_e_1).
obs_cond(right_e, a, f_obs, at_a_1).
obs_cond(right_e, b, f_obs, at_b_1).
obs_cond(right_e, c, f_obs, at_c_1).
obs_cond(right_e, d, f_obs, at_d_1).
obs_cond(right_e, e, f_obs, true).
obs_cond(right_e, a, obl  , neg(at_a_1)).
obs_cond(right_e, b, obl  , neg(at_b_1)).
obs_cond(right_e, c, obl  , neg(at_c_1)).
obs_cond(right_e, d, obl  , neg(at_d_1)).


action(share_a_sa_1).
action_type(share_a_sa_1, announcement).
announces(share_a_sa_1, sa).
action_pre(share_a_sa_1, and(neg(dia(a,neg(sa))),at_a_1)).
obs_cond(share_a_sa_1, a, f_obs, true).
obs_cond(share_a_sa_1, b, f_obs, at_b_1).
obs_cond(share_a_sa_1, b, obl  , neg(at_b_1)).
obs_cond(share_a_sa_1, c, f_obs, at_c_1).
obs_cond(share_a_sa_1, c, obl  , neg(at_c_1)).
obs_cond(share_a_sa_1, d, f_obs, at_d_1).
obs_cond(share_a_sa_1, d, obl  , neg(at_d_1)).
obs_cond(share_a_sa_1, e, f_obs, at_e_1).
obs_cond(share_a_sa_1, e, obl  , neg(at_e_1)).


action(share_a_sa_2).
action_type(share_a_sa_2, announcement).
announces(share_a_sa_2, sa).
action_pre(share_a_sa_2, and(neg(dia(a,neg(sa))),at_a_2)).
obs_cond(share_a_sa_2, a, f_obs, true).
obs_cond(share_a_sa_2, b, f_obs, at_b_2).
obs_cond(share_a_sa_2, b, obl  , neg(at_b_2)).
obs_cond(share_a_sa_2, c, f_obs, at_c_2).
obs_cond(share_a_sa_2, c, obl  , neg(at_c_2)).
obs_cond(share_a_sa_2, d, f_obs, at_d_2).
obs_cond(share_a_sa_2, d, obl  , neg(at_d_2)).
obs_cond(share_a_sa_2, e, f_obs, at_e_2).
obs_cond(share_a_sa_2, e, obl  , neg(at_e_2)).


action(share_a_sb_1).
action_type(share_a_sb_1, announcement).
announces(share_a_sb_1, sb).
action_pre(share_a_sb_1, and(neg(dia(a,neg(sb))),at_a_1)).
obs_cond(share_a_sb_1, a, f_obs, true).
obs_cond(share_a_sb_1, b, f_obs, at_b_1).
obs_cond(share_a_sb_1, b, obl  , neg(at_b_1)).
obs_cond(share_a_sb_1, c, f_obs, at_c_1).
obs_cond(share_a_sb_1, c, obl  , neg(at_c_1)).
obs_cond(share_a_sb_1, d, f_obs, at_d_1).
obs_cond(share_a_sb_1, d, obl  , neg(at_d_1)).
obs_cond(share_a_sb_1, e, f_obs, at_e_1).
obs_cond(share_a_sb_1, e, obl  , neg(at_e_1)).


action(share_a_sb_2).
action_type(share_a_sb_2, announcement).
announces(share_a_sb_2, sb).
action_pre(share_a_sb_2, and(neg(dia(a,neg(sb))),at_a_2)).
obs_cond(share_a_sb_2, a, f_obs, true).
obs_cond(share_a_sb_2, b, f_obs, at_b_2).
obs_cond(share_a_sb_2, b, obl  , neg(at_b_2)).
obs_cond(share_a_sb_2, c, f_obs, at_c_2).
obs_cond(share_a_sb_2, c, obl  , neg(at_c_2)).
obs_cond(share_a_sb_2, d, f_obs, at_d_2).
obs_cond(share_a_sb_2, d, obl  , neg(at_d_2)).
obs_cond(share_a_sb_2, e, f_obs, at_e_2).
obs_cond(share_a_sb_2, e, obl  , neg(at_e_2)).


action(share_a_sc_1).
action_type(share_a_sc_1, announcement).
announces(share_a_sc_1, sc).
action_pre(share_a_sc_1, and(neg(dia(a,neg(sc))),at_a_1)).
obs_cond(share_a_sc_1, a, f_obs, true).
obs_cond(share_a_sc_1, b, f_obs, at_b_1).
obs_cond(share_a_sc_1, b, obl  , neg(at_b_1)).
obs_cond(share_a_sc_1, c, f_obs, at_c_1).
obs_cond(share_a_sc_1, c, obl  , neg(at_c_1)).
obs_cond(share_a_sc_1, d, f_obs, at_d_1).
obs_cond(share_a_sc_1, d, obl  , neg(at_d_1)).
obs_cond(share_a_sc_1, e, f_obs, at_e_1).
obs_cond(share_a_sc_1, e, obl  , neg(at_e_1)).


action(share_a_sc_2).
action_type(share_a_sc_2, announcement).
announces(share_a_sc_2, sc).
action_pre(share_a_sc_2, and(neg(dia(a,neg(sc))),at_a_2)).
obs_cond(share_a_sc_2, a, f_obs, true).
obs_cond(share_a_sc_2, b, f_obs, at_b_2).
obs_cond(share_a_sc_2, b, obl  , neg(at_b_2)).
obs_cond(share_a_sc_2, c, f_obs, at_c_2).
obs_cond(share_a_sc_2, c, obl  , neg(at_c_2)).
obs_cond(share_a_sc_2, d, f_obs, at_d_2).
obs_cond(share_a_sc_2, d, obl  , neg(at_d_2)).
obs_cond(share_a_sc_2, e, f_obs, at_e_2).
obs_cond(share_a_sc_2, e, obl  , neg(at_e_2)).


action(share_a_sd_1).
action_type(share_a_sd_1, announcement).
announces(share_a_sd_1, sd).
action_pre(share_a_sd_1, and(neg(dia(a,neg(sd))),at_a_1)).
obs_cond(share_a_sd_1, a, f_obs, true).
obs_cond(share_a_sd_1, b, f_obs, at_b_1).
obs_cond(share_a_sd_1, b, obl  , neg(at_b_1)).
obs_cond(share_a_sd_1, c, f_obs, at_c_1).
obs_cond(share_a_sd_1, c, obl  , neg(at_c_1)).
obs_cond(share_a_sd_1, d, f_obs, at_d_1).
obs_cond(share_a_sd_1, d, obl  , neg(at_d_1)).
obs_cond(share_a_sd_1, e, f_obs, at_e_1).
obs_cond(share_a_sd_1, e, obl  , neg(at_e_1)).


action(share_a_sd_2).
action_type(share_a_sd_2, announcement).
announces(share_a_sd_2, sd).
action_pre(share_a_sd_2, and(neg(dia(a,neg(sd))),at_a_2)).
obs_cond(share_a_sd_2, a, f_obs, true).
obs_cond(share_a_sd_2, b, f_obs, at_b_2).
obs_cond(share_a_sd_2, b, obl  , neg(at_b_2)).
obs_cond(share_a_sd_2, c, f_obs, at_c_2).
obs_cond(share_a_sd_2, c, obl  , neg(at_c_2)).
obs_cond(share_a_sd_2, d, f_obs, at_d_2).
obs_cond(share_a_sd_2, d, obl  , neg(at_d_2)).
obs_cond(share_a_sd_2, e, f_obs, at_e_2).
obs_cond(share_a_sd_2, e, obl  , neg(at_e_2)).


action(share_a_se_1).
action_type(share_a_se_1, announcement).
announces(share_a_se_1, se).
action_pre(share_a_se_1, and(neg(dia(a,neg(se))),at_a_1)).
obs_cond(share_a_se_1, a, f_obs, true).
obs_cond(share_a_se_1, b, f_obs, at_b_1).
obs_cond(share_a_se_1, b, obl  , neg(at_b_1)).
obs_cond(share_a_se_1, c, f_obs, at_c_1).
obs_cond(share_a_se_1, c, obl  , neg(at_c_1)).
obs_cond(share_a_se_1, d, f_obs, at_d_1).
obs_cond(share_a_se_1, d, obl  , neg(at_d_1)).
obs_cond(share_a_se_1, e, f_obs, at_e_1).
obs_cond(share_a_se_1, e, obl  , neg(at_e_1)).


action(share_a_se_2).
action_type(share_a_se_2, announcement).
announces(share_a_se_2, se).
action_pre(share_a_se_2, and(neg(dia(a,neg(se))),at_a_2)).
obs_cond(share_a_se_2, a, f_obs, true).
obs_cond(share_a_se_2, b, f_obs, at_b_2).
obs_cond(share_a_se_2, b, obl  , neg(at_b_2)).
obs_cond(share_a_se_2, c, f_obs, at_c_2).
obs_cond(share_a_se_2, c, obl  , neg(at_c_2)).
obs_cond(share_a_se_2, d, f_obs, at_d_2).
obs_cond(share_a_se_2, d, obl  , neg(at_d_2)).
obs_cond(share_a_se_2, e, f_obs, at_e_2).
obs_cond(share_a_se_2, e, obl  , neg(at_e_2)).


action(share_b_sa_1).
action_type(share_b_sa_1, announcement).
announces(share_b_sa_1, sa).
action_pre(share_b_sa_1, and(neg(dia(b,neg(sa))),at_b_1)).
obs_cond(share_b_sa_1, a, f_obs, at_a_1).
obs_cond(share_b_sa_1, a, obl  , neg(at_a_1)).
obs_cond(share_b_sa_1, b, f_obs, true).
obs_cond(share_b_sa_1, c, f_obs, at_c_1).
obs_cond(share_b_sa_1, c, obl  , neg(at_c_1)).
obs_cond(share_b_sa_1, d, f_obs, at_d_1).
obs_cond(share_b_sa_1, d, obl  , neg(at_d_1)).
obs_cond(share_b_sa_1, e, f_obs, at_e_1).
obs_cond(share_b_sa_1, e, obl  , neg(at_e_1)).


action(share_b_sa_2).
action_type(share_b_sa_2, announcement).
announces(share_b_sa_2, sa).
action_pre(share_b_sa_2, and(neg(dia(b,neg(sa))),at_b_2)).
obs_cond(share_b_sa_2, a, f_obs, at_a_2).
obs_cond(share_b_sa_2, a, obl  , neg(at_a_2)).
obs_cond(share_b_sa_2, b, f_obs, true).
obs_cond(share_b_sa_2, c, f_obs, at_c_2).
obs_cond(share_b_sa_2, c, obl  , neg(at_c_2)).
obs_cond(share_b_sa_2, d, f_obs, at_d_2).
obs_cond(share_b_sa_2, d, obl  , neg(at_d_2)).
obs_cond(share_b_sa_2, e, f_obs, at_e_2).
obs_cond(share_b_sa_2, e, obl  , neg(at_e_2)).


action(share_b_sb_1).
action_type(share_b_sb_1, announcement).
announces(share_b_sb_1, sb).
action_pre(share_b_sb_1, and(neg(dia(b,neg(sb))),at_b_1)).
obs_cond(share_b_sb_1, a, f_obs, at_a_1).
obs_cond(share_b_sb_1, a, obl  , neg(at_a_1)).
obs_cond(share_b_sb_1, b, f_obs, true).
obs_cond(share_b_sb_1, c, f_obs, at_c_1).
obs_cond(share_b_sb_1, c, obl  , neg(at_c_1)).
obs_cond(share_b_sb_1, d, f_obs, at_d_1).
obs_cond(share_b_sb_1, d, obl  , neg(at_d_1)).
obs_cond(share_b_sb_1, e, f_obs, at_e_1).
obs_cond(share_b_sb_1, e, obl  , neg(at_e_1)).


action(share_b_sb_2).
action_type(share_b_sb_2, announcement).
announces(share_b_sb_2, sb).
action_pre(share_b_sb_2, and(neg(dia(b,neg(sb))),at_b_2)).
obs_cond(share_b_sb_2, a, f_obs, at_a_2).
obs_cond(share_b_sb_2, a, obl  , neg(at_a_2)).
obs_cond(share_b_sb_2, b, f_obs, true).
obs_cond(share_b_sb_2, c, f_obs, at_c_2).
obs_cond(share_b_sb_2, c, obl  , neg(at_c_2)).
obs_cond(share_b_sb_2, d, f_obs, at_d_2).
obs_cond(share_b_sb_2, d, obl  , neg(at_d_2)).
obs_cond(share_b_sb_2, e, f_obs, at_e_2).
obs_cond(share_b_sb_2, e, obl  , neg(at_e_2)).


action(share_b_sc_1).
action_type(share_b_sc_1, announcement).
announces(share_b_sc_1, sc).
action_pre(share_b_sc_1, and(neg(dia(b,neg(sc))),at_b_1)).
obs_cond(share_b_sc_1, a, f_obs, at_a_1).
obs_cond(share_b_sc_1, a, obl  , neg(at_a_1)).
obs_cond(share_b_sc_1, b, f_obs, true).
obs_cond(share_b_sc_1, c, f_obs, at_c_1).
obs_cond(share_b_sc_1, c, obl  , neg(at_c_1)).
obs_cond(share_b_sc_1, d, f_obs, at_d_1).
obs_cond(share_b_sc_1, d, obl  , neg(at_d_1)).
obs_cond(share_b_sc_1, e, f_obs, at_e_1).
obs_cond(share_b_sc_1, e, obl  , neg(at_e_1)).


action(share_b_sc_2).
action_type(share_b_sc_2, announcement).
announces(share_b_sc_2, sc).
action_pre(share_b_sc_2, and(neg(dia(b,neg(sc))),at_b_2)).
obs_cond(share_b_sc_2, a, f_obs, at_a_2).
obs_cond(share_b_sc_2, a, obl  , neg(at_a_2)).
obs_cond(share_b_sc_2, b, f_obs, true).
obs_cond(share_b_sc_2, c, f_obs, at_c_2).
obs_cond(share_b_sc_2, c, obl  , neg(at_c_2)).
obs_cond(share_b_sc_2, d, f_obs, at_d_2).
obs_cond(share_b_sc_2, d, obl  , neg(at_d_2)).
obs_cond(share_b_sc_2, e, f_obs, at_e_2).
obs_cond(share_b_sc_2, e, obl  , neg(at_e_2)).


action(share_b_sd_1).
action_type(share_b_sd_1, announcement).
announces(share_b_sd_1, sd).
action_pre(share_b_sd_1, and(neg(dia(b,neg(sd))),at_b_1)).
obs_cond(share_b_sd_1, a, f_obs, at_a_1).
obs_cond(share_b_sd_1, a, obl  , neg(at_a_1)).
obs_cond(share_b_sd_1, b, f_obs, true).
obs_cond(share_b_sd_1, c, f_obs, at_c_1).
obs_cond(share_b_sd_1, c, obl  , neg(at_c_1)).
obs_cond(share_b_sd_1, d, f_obs, at_d_1).
obs_cond(share_b_sd_1, d, obl  , neg(at_d_1)).
obs_cond(share_b_sd_1, e, f_obs, at_e_1).
obs_cond(share_b_sd_1, e, obl  , neg(at_e_1)).


action(share_b_sd_2).
action_type(share_b_sd_2, announcement).
announces(share_b_sd_2, sd).
action_pre(share_b_sd_2, and(neg(dia(b,neg(sd))),at_b_2)).
obs_cond(share_b_sd_2, a, f_obs, at_a_2).
obs_cond(share_b_sd_2, a, obl  , neg(at_a_2)).
obs_cond(share_b_sd_2, b, f_obs, true).
obs_cond(share_b_sd_2, c, f_obs, at_c_2).
obs_cond(share_b_sd_2, c, obl  , neg(at_c_2)).
obs_cond(share_b_sd_2, d, f_obs, at_d_2).
obs_cond(share_b_sd_2, d, obl  , neg(at_d_2)).
obs_cond(share_b_sd_2, e, f_obs, at_e_2).
obs_cond(share_b_sd_2, e, obl  , neg(at_e_2)).


action(share_b_se_1).
action_type(share_b_se_1, announcement).
announces(share_b_se_1, se).
action_pre(share_b_se_1, and(neg(dia(b,neg(se))),at_b_1)).
obs_cond(share_b_se_1, a, f_obs, at_a_1).
obs_cond(share_b_se_1, a, obl  , neg(at_a_1)).
obs_cond(share_b_se_1, b, f_obs, true).
obs_cond(share_b_se_1, c, f_obs, at_c_1).
obs_cond(share_b_se_1, c, obl  , neg(at_c_1)).
obs_cond(share_b_se_1, d, f_obs, at_d_1).
obs_cond(share_b_se_1, d, obl  , neg(at_d_1)).
obs_cond(share_b_se_1, e, f_obs, at_e_1).
obs_cond(share_b_se_1, e, obl  , neg(at_e_1)).


action(share_b_se_2).
action_type(share_b_se_2, announcement).
announces(share_b_se_2, se).
action_pre(share_b_se_2, and(neg(dia(b,neg(se))),at_b_2)).
obs_cond(share_b_se_2, a, f_obs, at_a_2).
obs_cond(share_b_se_2, a, obl  , neg(at_a_2)).
obs_cond(share_b_se_2, b, f_obs, true).
obs_cond(share_b_se_2, c, f_obs, at_c_2).
obs_cond(share_b_se_2, c, obl  , neg(at_c_2)).
obs_cond(share_b_se_2, d, f_obs, at_d_2).
obs_cond(share_b_se_2, d, obl  , neg(at_d_2)).
obs_cond(share_b_se_2, e, f_obs, at_e_2).
obs_cond(share_b_se_2, e, obl  , neg(at_e_2)).


action(share_c_sa_1).
action_type(share_c_sa_1, announcement).
announces(share_c_sa_1, sa).
action_pre(share_c_sa_1, and(neg(dia(c,neg(sa))),at_c_1)).
obs_cond(share_c_sa_1, a, f_obs, at_a_1).
obs_cond(share_c_sa_1, a, obl  , neg(at_a_1)).
obs_cond(share_c_sa_1, b, f_obs, at_b_1).
obs_cond(share_c_sa_1, b, obl  , neg(at_b_1)).
obs_cond(share_c_sa_1, c, f_obs, true).
obs_cond(share_c_sa_1, d, f_obs, at_d_1).
obs_cond(share_c_sa_1, d, obl  , neg(at_d_1)).
obs_cond(share_c_sa_1, e, f_obs, at_e_1).
obs_cond(share_c_sa_1, e, obl  , neg(at_e_1)).


action(share_c_sa_2).
action_type(share_c_sa_2, announcement).
announces(share_c_sa_2, sa).
action_pre(share_c_sa_2, and(neg(dia(c,neg(sa))),at_c_2)).
obs_cond(share_c_sa_2, a, f_obs, at_a_2).
obs_cond(share_c_sa_2, a, obl  , neg(at_a_2)).
obs_cond(share_c_sa_2, b, f_obs, at_b_2).
obs_cond(share_c_sa_2, b, obl  , neg(at_b_2)).
obs_cond(share_c_sa_2, c, f_obs, true).
obs_cond(share_c_sa_2, d, f_obs, at_d_2).
obs_cond(share_c_sa_2, d, obl  , neg(at_d_2)).
obs_cond(share_c_sa_2, e, f_obs, at_e_2).
obs_cond(share_c_sa_2, e, obl  , neg(at_e_2)).


action(share_c_sb_1).
action_type(share_c_sb_1, announcement).
announces(share_c_sb_1, sb).
action_pre(share_c_sb_1, and(neg(dia(c,neg(sb))),at_c_1)).
obs_cond(share_c_sb_1, a, f_obs, at_a_1).
obs_cond(share_c_sb_1, a, obl  , neg(at_a_1)).
obs_cond(share_c_sb_1, b, f_obs, at_b_1).
obs_cond(share_c_sb_1, b, obl  , neg(at_b_1)).
obs_cond(share_c_sb_1, c, f_obs, true).
obs_cond(share_c_sb_1, d, f_obs, at_d_1).
obs_cond(share_c_sb_1, d, obl  , neg(at_d_1)).
obs_cond(share_c_sb_1, e, f_obs, at_e_1).
obs_cond(share_c_sb_1, e, obl  , neg(at_e_1)).


action(share_c_sb_2).
action_type(share_c_sb_2, announcement).
announces(share_c_sb_2, sb).
action_pre(share_c_sb_2, and(neg(dia(c,neg(sb))),at_c_2)).
obs_cond(share_c_sb_2, a, f_obs, at_a_2).
obs_cond(share_c_sb_2, a, obl  , neg(at_a_2)).
obs_cond(share_c_sb_2, b, f_obs, at_b_2).
obs_cond(share_c_sb_2, b, obl  , neg(at_b_2)).
obs_cond(share_c_sb_2, c, f_obs, true).
obs_cond(share_c_sb_2, d, f_obs, at_d_2).
obs_cond(share_c_sb_2, d, obl  , neg(at_d_2)).
obs_cond(share_c_sb_2, e, f_obs, at_e_2).
obs_cond(share_c_sb_2, e, obl  , neg(at_e_2)).


action(share_c_sc_1).
action_type(share_c_sc_1, announcement).
announces(share_c_sc_1, sc).
action_pre(share_c_sc_1, and(neg(dia(c,neg(sc))),at_c_1)).
obs_cond(share_c_sc_1, a, f_obs, at_a_1).
obs_cond(share_c_sc_1, a, obl  , neg(at_a_1)).
obs_cond(share_c_sc_1, b, f_obs, at_b_1).
obs_cond(share_c_sc_1, b, obl  , neg(at_b_1)).
obs_cond(share_c_sc_1, c, f_obs, true).
obs_cond(share_c_sc_1, d, f_obs, at_d_1).
obs_cond(share_c_sc_1, d, obl  , neg(at_d_1)).
obs_cond(share_c_sc_1, e, f_obs, at_e_1).
obs_cond(share_c_sc_1, e, obl  , neg(at_e_1)).


action(share_c_sc_2).
action_type(share_c_sc_2, announcement).
announces(share_c_sc_2, sc).
action_pre(share_c_sc_2, and(neg(dia(c,neg(sc))),at_c_2)).
obs_cond(share_c_sc_2, a, f_obs, at_a_2).
obs_cond(share_c_sc_2, a, obl  , neg(at_a_2)).
obs_cond(share_c_sc_2, b, f_obs, at_b_2).
obs_cond(share_c_sc_2, b, obl  , neg(at_b_2)).
obs_cond(share_c_sc_2, c, f_obs, true).
obs_cond(share_c_sc_2, d, f_obs, at_d_2).
obs_cond(share_c_sc_2, d, obl  , neg(at_d_2)).
obs_cond(share_c_sc_2, e, f_obs, at_e_2).
obs_cond(share_c_sc_2, e, obl  , neg(at_e_2)).


action(share_c_sd_1).
action_type(share_c_sd_1, announcement).
announces(share_c_sd_1, sd).
action_pre(share_c_sd_1, and(neg(dia(c,neg(sd))),at_c_1)).
obs_cond(share_c_sd_1, a, f_obs, at_a_1).
obs_cond(share_c_sd_1, a, obl  , neg(at_a_1)).
obs_cond(share_c_sd_1, b, f_obs, at_b_1).
obs_cond(share_c_sd_1, b, obl  , neg(at_b_1)).
obs_cond(share_c_sd_1, c, f_obs, true).
obs_cond(share_c_sd_1, d, f_obs, at_d_1).
obs_cond(share_c_sd_1, d, obl  , neg(at_d_1)).
obs_cond(share_c_sd_1, e, f_obs, at_e_1).
obs_cond(share_c_sd_1, e, obl  , neg(at_e_1)).


action(share_c_sd_2).
action_type(share_c_sd_2, announcement).
announces(share_c_sd_2, sd).
action_pre(share_c_sd_2, and(neg(dia(c,neg(sd))),at_c_2)).
obs_cond(share_c_sd_2, a, f_obs, at_a_2).
obs_cond(share_c_sd_2, a, obl  , neg(at_a_2)).
obs_cond(share_c_sd_2, b, f_obs, at_b_2).
obs_cond(share_c_sd_2, b, obl  , neg(at_b_2)).
obs_cond(share_c_sd_2, c, f_obs, true).
obs_cond(share_c_sd_2, d, f_obs, at_d_2).
obs_cond(share_c_sd_2, d, obl  , neg(at_d_2)).
obs_cond(share_c_sd_2, e, f_obs, at_e_2).
obs_cond(share_c_sd_2, e, obl  , neg(at_e_2)).


action(share_c_se_1).
action_type(share_c_se_1, announcement).
announces(share_c_se_1, se).
action_pre(share_c_se_1, and(neg(dia(c,neg(se))),at_c_1)).
obs_cond(share_c_se_1, a, f_obs, at_a_1).
obs_cond(share_c_se_1, a, obl  , neg(at_a_1)).
obs_cond(share_c_se_1, b, f_obs, at_b_1).
obs_cond(share_c_se_1, b, obl  , neg(at_b_1)).
obs_cond(share_c_se_1, c, f_obs, true).
obs_cond(share_c_se_1, d, f_obs, at_d_1).
obs_cond(share_c_se_1, d, obl  , neg(at_d_1)).
obs_cond(share_c_se_1, e, f_obs, at_e_1).
obs_cond(share_c_se_1, e, obl  , neg(at_e_1)).


action(share_c_se_2).
action_type(share_c_se_2, announcement).
announces(share_c_se_2, se).
action_pre(share_c_se_2, and(neg(dia(c,neg(se))),at_c_2)).
obs_cond(share_c_se_2, a, f_obs, at_a_2).
obs_cond(share_c_se_2, a, obl  , neg(at_a_2)).
obs_cond(share_c_se_2, b, f_obs, at_b_2).
obs_cond(share_c_se_2, b, obl  , neg(at_b_2)).
obs_cond(share_c_se_2, c, f_obs, true).
obs_cond(share_c_se_2, d, f_obs, at_d_2).
obs_cond(share_c_se_2, d, obl  , neg(at_d_2)).
obs_cond(share_c_se_2, e, f_obs, at_e_2).
obs_cond(share_c_se_2, e, obl  , neg(at_e_2)).


action(share_d_sa_1).
action_type(share_d_sa_1, announcement).
announces(share_d_sa_1, sa).
action_pre(share_d_sa_1, and(neg(dia(d,neg(sa))),at_d_1)).
obs_cond(share_d_sa_1, a, f_obs, at_a_1).
obs_cond(share_d_sa_1, a, obl  , neg(at_a_1)).
obs_cond(share_d_sa_1, b, f_obs, at_b_1).
obs_cond(share_d_sa_1, b, obl  , neg(at_b_1)).
obs_cond(share_d_sa_1, c, f_obs, at_c_1).
obs_cond(share_d_sa_1, c, obl  , neg(at_c_1)).
obs_cond(share_d_sa_1, d, f_obs, true).
obs_cond(share_d_sa_1, e, f_obs, at_e_1).
obs_cond(share_d_sa_1, e, obl  , neg(at_e_1)).


action(share_d_sa_2).
action_type(share_d_sa_2, announcement).
announces(share_d_sa_2, sa).
action_pre(share_d_sa_2, and(neg(dia(d,neg(sa))),at_d_2)).
obs_cond(share_d_sa_2, a, f_obs, at_a_2).
obs_cond(share_d_sa_2, a, obl  , neg(at_a_2)).
obs_cond(share_d_sa_2, b, f_obs, at_b_2).
obs_cond(share_d_sa_2, b, obl  , neg(at_b_2)).
obs_cond(share_d_sa_2, c, f_obs, at_c_2).
obs_cond(share_d_sa_2, c, obl  , neg(at_c_2)).
obs_cond(share_d_sa_2, d, f_obs, true).
obs_cond(share_d_sa_2, e, f_obs, at_e_2).
obs_cond(share_d_sa_2, e, obl  , neg(at_e_2)).


action(share_d_sb_1).
action_type(share_d_sb_1, announcement).
announces(share_d_sb_1, sb).
action_pre(share_d_sb_1, and(neg(dia(d,neg(sb))),at_d_1)).
obs_cond(share_d_sb_1, a, f_obs, at_a_1).
obs_cond(share_d_sb_1, a, obl  , neg(at_a_1)).
obs_cond(share_d_sb_1, b, f_obs, at_b_1).
obs_cond(share_d_sb_1, b, obl  , neg(at_b_1)).
obs_cond(share_d_sb_1, c, f_obs, at_c_1).
obs_cond(share_d_sb_1, c, obl  , neg(at_c_1)).
obs_cond(share_d_sb_1, d, f_obs, true).
obs_cond(share_d_sb_1, e, f_obs, at_e_1).
obs_cond(share_d_sb_1, e, obl  , neg(at_e_1)).


action(share_d_sb_2).
action_type(share_d_sb_2, announcement).
announces(share_d_sb_2, sb).
action_pre(share_d_sb_2, and(neg(dia(d,neg(sb))),at_d_2)).
obs_cond(share_d_sb_2, a, f_obs, at_a_2).
obs_cond(share_d_sb_2, a, obl  , neg(at_a_2)).
obs_cond(share_d_sb_2, b, f_obs, at_b_2).
obs_cond(share_d_sb_2, b, obl  , neg(at_b_2)).
obs_cond(share_d_sb_2, c, f_obs, at_c_2).
obs_cond(share_d_sb_2, c, obl  , neg(at_c_2)).
obs_cond(share_d_sb_2, d, f_obs, true).
obs_cond(share_d_sb_2, e, f_obs, at_e_2).
obs_cond(share_d_sb_2, e, obl  , neg(at_e_2)).


action(share_d_sc_1).
action_type(share_d_sc_1, announcement).
announces(share_d_sc_1, sc).
action_pre(share_d_sc_1, and(neg(dia(d,neg(sc))),at_d_1)).
obs_cond(share_d_sc_1, a, f_obs, at_a_1).
obs_cond(share_d_sc_1, a, obl  , neg(at_a_1)).
obs_cond(share_d_sc_1, b, f_obs, at_b_1).
obs_cond(share_d_sc_1, b, obl  , neg(at_b_1)).
obs_cond(share_d_sc_1, c, f_obs, at_c_1).
obs_cond(share_d_sc_1, c, obl  , neg(at_c_1)).
obs_cond(share_d_sc_1, d, f_obs, true).
obs_cond(share_d_sc_1, e, f_obs, at_e_1).
obs_cond(share_d_sc_1, e, obl  , neg(at_e_1)).


action(share_d_sc_2).
action_type(share_d_sc_2, announcement).
announces(share_d_sc_2, sc).
action_pre(share_d_sc_2, and(neg(dia(d,neg(sc))),at_d_2)).
obs_cond(share_d_sc_2, a, f_obs, at_a_2).
obs_cond(share_d_sc_2, a, obl  , neg(at_a_2)).
obs_cond(share_d_sc_2, b, f_obs, at_b_2).
obs_cond(share_d_sc_2, b, obl  , neg(at_b_2)).
obs_cond(share_d_sc_2, c, f_obs, at_c_2).
obs_cond(share_d_sc_2, c, obl  , neg(at_c_2)).
obs_cond(share_d_sc_2, d, f_obs, true).
obs_cond(share_d_sc_2, e, f_obs, at_e_2).
obs_cond(share_d_sc_2, e, obl  , neg(at_e_2)).


action(share_d_sd_1).
action_type(share_d_sd_1, announcement).
announces(share_d_sd_1, sd).
action_pre(share_d_sd_1, and(neg(dia(d,neg(sd))),at_d_1)).
obs_cond(share_d_sd_1, a, f_obs, at_a_1).
obs_cond(share_d_sd_1, a, obl  , neg(at_a_1)).
obs_cond(share_d_sd_1, b, f_obs, at_b_1).
obs_cond(share_d_sd_1, b, obl  , neg(at_b_1)).
obs_cond(share_d_sd_1, c, f_obs, at_c_1).
obs_cond(share_d_sd_1, c, obl  , neg(at_c_1)).
obs_cond(share_d_sd_1, d, f_obs, true).
obs_cond(share_d_sd_1, e, f_obs, at_e_1).
obs_cond(share_d_sd_1, e, obl  , neg(at_e_1)).


action(share_d_sd_2).
action_type(share_d_sd_2, announcement).
announces(share_d_sd_2, sd).
action_pre(share_d_sd_2, and(neg(dia(d,neg(sd))),at_d_2)).
obs_cond(share_d_sd_2, a, f_obs, at_a_2).
obs_cond(share_d_sd_2, a, obl  , neg(at_a_2)).
obs_cond(share_d_sd_2, b, f_obs, at_b_2).
obs_cond(share_d_sd_2, b, obl  , neg(at_b_2)).
obs_cond(share_d_sd_2, c, f_obs, at_c_2).
obs_cond(share_d_sd_2, c, obl  , neg(at_c_2)).
obs_cond(share_d_sd_2, d, f_obs, true).
obs_cond(share_d_sd_2, e, f_obs, at_e_2).
obs_cond(share_d_sd_2, e, obl  , neg(at_e_2)).


action(share_d_se_1).
action_type(share_d_se_1, announcement).
announces(share_d_se_1, se).
action_pre(share_d_se_1, and(neg(dia(d,neg(se))),at_d_1)).
obs_cond(share_d_se_1, a, f_obs, at_a_1).
obs_cond(share_d_se_1, a, obl  , neg(at_a_1)).
obs_cond(share_d_se_1, b, f_obs, at_b_1).
obs_cond(share_d_se_1, b, obl  , neg(at_b_1)).
obs_cond(share_d_se_1, c, f_obs, at_c_1).
obs_cond(share_d_se_1, c, obl  , neg(at_c_1)).
obs_cond(share_d_se_1, d, f_obs, true).
obs_cond(share_d_se_1, e, f_obs, at_e_1).
obs_cond(share_d_se_1, e, obl  , neg(at_e_1)).


action(share_d_se_2).
action_type(share_d_se_2, announcement).
announces(share_d_se_2, se).
action_pre(share_d_se_2, and(neg(dia(d,neg(se))),at_d_2)).
obs_cond(share_d_se_2, a, f_obs, at_a_2).
obs_cond(share_d_se_2, a, obl  , neg(at_a_2)).
obs_cond(share_d_se_2, b, f_obs, at_b_2).
obs_cond(share_d_se_2, b, obl  , neg(at_b_2)).
obs_cond(share_d_se_2, c, f_obs, at_c_2).
obs_cond(share_d_se_2, c, obl  , neg(at_c_2)).
obs_cond(share_d_se_2, d, f_obs, true).
obs_cond(share_d_se_2, e, f_obs, at_e_2).
obs_cond(share_d_se_2, e, obl  , neg(at_e_2)).


action(share_e_sa_1).
action_type(share_e_sa_1, announcement).
announces(share_e_sa_1, sa).
action_pre(share_e_sa_1, and(neg(dia(e,neg(sa))),at_e_1)).
obs_cond(share_e_sa_1, a, f_obs, at_a_1).
obs_cond(share_e_sa_1, a, obl  , neg(at_a_1)).
obs_cond(share_e_sa_1, b, f_obs, at_b_1).
obs_cond(share_e_sa_1, b, obl  , neg(at_b_1)).
obs_cond(share_e_sa_1, c, f_obs, at_c_1).
obs_cond(share_e_sa_1, c, obl  , neg(at_c_1)).
obs_cond(share_e_sa_1, d, f_obs, at_d_1).
obs_cond(share_e_sa_1, d, obl  , neg(at_d_1)).
obs_cond(share_e_sa_1, e, f_obs, true).


action(share_e_sa_2).
action_type(share_e_sa_2, announcement).
announces(share_e_sa_2, sa).
action_pre(share_e_sa_2, and(neg(dia(e,neg(sa))),at_e_2)).
obs_cond(share_e_sa_2, a, f_obs, at_a_2).
obs_cond(share_e_sa_2, a, obl  , neg(at_a_2)).
obs_cond(share_e_sa_2, b, f_obs, at_b_2).
obs_cond(share_e_sa_2, b, obl  , neg(at_b_2)).
obs_cond(share_e_sa_2, c, f_obs, at_c_2).
obs_cond(share_e_sa_2, c, obl  , neg(at_c_2)).
obs_cond(share_e_sa_2, d, f_obs, at_d_2).
obs_cond(share_e_sa_2, d, obl  , neg(at_d_2)).
obs_cond(share_e_sa_2, e, f_obs, true).


action(share_e_sb_1).
action_type(share_e_sb_1, announcement).
announces(share_e_sb_1, sb).
action_pre(share_e_sb_1, and(neg(dia(e,neg(sb))),at_e_1)).
obs_cond(share_e_sb_1, a, f_obs, at_a_1).
obs_cond(share_e_sb_1, a, obl  , neg(at_a_1)).
obs_cond(share_e_sb_1, b, f_obs, at_b_1).
obs_cond(share_e_sb_1, b, obl  , neg(at_b_1)).
obs_cond(share_e_sb_1, c, f_obs, at_c_1).
obs_cond(share_e_sb_1, c, obl  , neg(at_c_1)).
obs_cond(share_e_sb_1, d, f_obs, at_d_1).
obs_cond(share_e_sb_1, d, obl  , neg(at_d_1)).
obs_cond(share_e_sb_1, e, f_obs, true).


action(share_e_sb_2).
action_type(share_e_sb_2, announcement).
announces(share_e_sb_2, sb).
action_pre(share_e_sb_2, and(neg(dia(e,neg(sb))),at_e_2)).
obs_cond(share_e_sb_2, a, f_obs, at_a_2).
obs_cond(share_e_sb_2, a, obl  , neg(at_a_2)).
obs_cond(share_e_sb_2, b, f_obs, at_b_2).
obs_cond(share_e_sb_2, b, obl  , neg(at_b_2)).
obs_cond(share_e_sb_2, c, f_obs, at_c_2).
obs_cond(share_e_sb_2, c, obl  , neg(at_c_2)).
obs_cond(share_e_sb_2, d, f_obs, at_d_2).
obs_cond(share_e_sb_2, d, obl  , neg(at_d_2)).
obs_cond(share_e_sb_2, e, f_obs, true).


action(share_e_sc_1).
action_type(share_e_sc_1, announcement).
announces(share_e_sc_1, sc).
action_pre(share_e_sc_1, and(neg(dia(e,neg(sc))),at_e_1)).
obs_cond(share_e_sc_1, a, f_obs, at_a_1).
obs_cond(share_e_sc_1, a, obl  , neg(at_a_1)).
obs_cond(share_e_sc_1, b, f_obs, at_b_1).
obs_cond(share_e_sc_1, b, obl  , neg(at_b_1)).
obs_cond(share_e_sc_1, c, f_obs, at_c_1).
obs_cond(share_e_sc_1, c, obl  , neg(at_c_1)).
obs_cond(share_e_sc_1, d, f_obs, at_d_1).
obs_cond(share_e_sc_1, d, obl  , neg(at_d_1)).
obs_cond(share_e_sc_1, e, f_obs, true).


action(share_e_sc_2).
action_type(share_e_sc_2, announcement).
announces(share_e_sc_2, sc).
action_pre(share_e_sc_2, and(neg(dia(e,neg(sc))),at_e_2)).
obs_cond(share_e_sc_2, a, f_obs, at_a_2).
obs_cond(share_e_sc_2, a, obl  , neg(at_a_2)).
obs_cond(share_e_sc_2, b, f_obs, at_b_2).
obs_cond(share_e_sc_2, b, obl  , neg(at_b_2)).
obs_cond(share_e_sc_2, c, f_obs, at_c_2).
obs_cond(share_e_sc_2, c, obl  , neg(at_c_2)).
obs_cond(share_e_sc_2, d, f_obs, at_d_2).
obs_cond(share_e_sc_2, d, obl  , neg(at_d_2)).
obs_cond(share_e_sc_2, e, f_obs, true).


action(share_e_sd_1).
action_type(share_e_sd_1, announcement).
announces(share_e_sd_1, sd).
action_pre(share_e_sd_1, and(neg(dia(e,neg(sd))),at_e_1)).
obs_cond(share_e_sd_1, a, f_obs, at_a_1).
obs_cond(share_e_sd_1, a, obl  , neg(at_a_1)).
obs_cond(share_e_sd_1, b, f_obs, at_b_1).
obs_cond(share_e_sd_1, b, obl  , neg(at_b_1)).
obs_cond(share_e_sd_1, c, f_obs, at_c_1).
obs_cond(share_e_sd_1, c, obl  , neg(at_c_1)).
obs_cond(share_e_sd_1, d, f_obs, at_d_1).
obs_cond(share_e_sd_1, d, obl  , neg(at_d_1)).
obs_cond(share_e_sd_1, e, f_obs, true).


action(share_e_sd_2).
action_type(share_e_sd_2, announcement).
announces(share_e_sd_2, sd).
action_pre(share_e_sd_2, and(neg(dia(e,neg(sd))),at_e_2)).
obs_cond(share_e_sd_2, a, f_obs, at_a_2).
obs_cond(share_e_sd_2, a, obl  , neg(at_a_2)).
obs_cond(share_e_sd_2, b, f_obs, at_b_2).
obs_cond(share_e_sd_2, b, obl  , neg(at_b_2)).
obs_cond(share_e_sd_2, c, f_obs, at_c_2).
obs_cond(share_e_sd_2, c, obl  , neg(at_c_2)).
obs_cond(share_e_sd_2, d, f_obs, at_d_2).
obs_cond(share_e_sd_2, d, obl  , neg(at_d_2)).
obs_cond(share_e_sd_2, e, f_obs, true).


action(share_e_se_1).
action_type(share_e_se_1, announcement).
announces(share_e_se_1, se).
action_pre(share_e_se_1, and(neg(dia(e,neg(se))),at_e_1)).
obs_cond(share_e_se_1, a, f_obs, at_a_1).
obs_cond(share_e_se_1, a, obl  , neg(at_a_1)).
obs_cond(share_e_se_1, b, f_obs, at_b_1).
obs_cond(share_e_se_1, b, obl  , neg(at_b_1)).
obs_cond(share_e_se_1, c, f_obs, at_c_1).
obs_cond(share_e_se_1, c, obl  , neg(at_c_1)).
obs_cond(share_e_se_1, d, f_obs, at_d_1).
obs_cond(share_e_se_1, d, obl  , neg(at_d_1)).
obs_cond(share_e_se_1, e, f_obs, true).


action(share_e_se_2).
action_type(share_e_se_2, announcement).
announces(share_e_se_2, se).
action_pre(share_e_se_2, and(neg(dia(e,neg(se))),at_e_2)).
obs_cond(share_e_se_2, a, f_obs, at_a_2).
obs_cond(share_e_se_2, a, obl  , neg(at_a_2)).
obs_cond(share_e_se_2, b, f_obs, at_b_2).
obs_cond(share_e_se_2, b, obl  , neg(at_b_2)).
obs_cond(share_e_se_2, c, f_obs, at_c_2).
obs_cond(share_e_se_2, c, obl  , neg(at_c_2)).
obs_cond(share_e_se_2, d, f_obs, at_d_2).
obs_cond(share_e_se_2, d, obl  , neg(at_d_2)).
obs_cond(share_e_se_2, e, f_obs, true).




% *** INITIAL STATE ***
w_init(w0). w_init(w1). w_init(w2). w_init(w3).
w_init(w4). w_init(w5). w_init(w6). w_init(w7).
w_init(w8). w_init(w9). w_init(w10). w_init(w11).
w_init(w12). w_init(w13). w_init(w14). w_init(w15).
w_init(w16). w_init(w17). w_init(w18). w_init(w19).
w_init(w20). w_init(w21). w_init(w22). w_init(w23).
w_init(w24). w_init(w25). w_init(w26). w_init(w27).
w_init(w28). w_init(w29). w_init(w30). w_init(w31).

r_init(W, W, AG) :- w_init(W), agent(AG).

r_init(W1, W2, a) :- w_init(W1), w_init(W2), W1 != W2,     v_init(W1, sa),     v_init(W2, sa).
r_init(W1, W2, a) :- w_init(W1), w_init(W2), W1 != W2, not v_init(W1, sa), not v_init(W2, sa).

r_init(W1, W2, b) :- w_init(W1), w_init(W2), W1 != W2,     v_init(W1, sb),     v_init(W2, sb).
r_init(W1, W2, b) :- w_init(W1), w_init(W2), W1 != W2, not v_init(W1, sb), not v_init(W2, sb).

r_init(W1, W2, c) :- w_init(W1), w_init(W2), W1 != W2,     v_init(W1, sc),     v_init(W2, sc).
r_init(W1, W2, c) :- w_init(W1), w_init(W2), W1 != W2, not v_init(W1, sc), not v_init(W2, sc).

r_init(W1, W2, d) :- w_init(W1), w_init(W2), W1 != W2,     v_init(W1, sd),     v_init(W2, sd).
r_init(W1, W2, d) :- w_init(W1), w_init(W2), W1 != W2, not v_init(W1, sd), not v_init(W2, sd).

r_init(W1, W2, e) :- w_init(W1), w_init(W2), W1 != W2,     v_init(W1, se),     v_init(W2, se).
r_init(W1, W2, e) :- w_init(W1), w_init(W2), W1 != W2, not v_init(W1, se), not v_init(W2, se).

v_init(W, at_a_1) :- w_init(W).
v_init(W, at_b_1) :- w_init(W).
v_init(W, at_c_1) :- w_init(W).
v_init(W, at_d_1) :- w_init(W).
v_init(W, at_e_1) :- w_init(W).

v_init(w0, sa).
v_init(w0, sb).
v_init(w0, sc).
v_init(w0, sd).
v_init(w0, se).

v_init(w1, sa).
v_init(w1, sb).
v_init(w1, sc).
v_init(w1, sd).

v_init(w2, sa).
v_init(w2, sb).
v_init(w2, sc).
v_init(w2, se).

v_init(w3, sa).
v_init(w3, sb).
v_init(w3, sd).
v_init(w3, se).

v_init(w4, sa).
v_init(w4, sc).
v_init(w4, sd).
v_init(w4, se).

v_init(w5, sb).
v_init(w5, sc).
v_init(w5, sd).
v_init(w5, se).

v_init(w6, sa).
v_init(w6, sb).
v_init(w6, sc).

v_init(w7, sa).
v_init(w7, sb).
v_init(w7, sd).

v_init(w8, sa).
v_init(w8, sb).
v_init(w8, se).

v_init(w9, sa).
v_init(w9, sc).
v_init(w9, sd).

v_init(w10, sa).
v_init(w10, sc).
v_init(w10, se).

v_init(w11, sa).
v_init(w11, sd).
v_init(w11, se).

v_init(w12, sb).
v_init(w12, sc).
v_init(w12, sd).

v_init(w13, sb).
v_init(w13, sc).
v_init(w13, se).

v_init(w14, sb).
v_init(w14, sd).
v_init(w14, se).

v_init(w15, sc).
v_init(w15, sd).
v_init(w15, se).

v_init(w16, sa).
v_init(w16, sb).

v_init(w17, sa).
v_init(w17, sc).

v_init(w18, sa).
v_init(w18, sd).

v_init(w19, sa).
v_init(w19, se).

v_init(w20, sb).
v_init(w20, sc).

v_init(w21, sb).
v_init(w21, sd).

v_init(w22, sb).
v_init(w22, se).

v_init(w23, sc).
v_init(w23, sd).

v_init(w24, sc).
v_init(w24, se).

v_init(w25, sd).
v_init(w25, se).

v_init(w26, sa).

v_init(w27, sb).

v_init(w28, sc).

v_init(w29, sd).

v_init(w30, se).

dw_init(w0).
