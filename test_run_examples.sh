#!/bin/bash

prefix="python -u"
common_arg="--gpu -1 --logging-level WARNING --max-steps 256 --batch-size 32"
off_pol_arg="--n-warmup 64 --memory-capacity 256"

# DDPG variants
${prefix} examples/run_ddpg.py ${common_arg} ${off_pol_arg}
${prefix} examples/run_bi_res_ddpg.py ${common_arg} ${off_pol_arg}
${prefix} examples/run_td3.py ${common_arg} ${off_pol_arg}
${prefix} examples/run_sac.py ${common_arg} ${off_pol_arg}

# DQN variants
${prefix} examples/run_dqn.py ${common_arg} ${off_pol_arg}
${prefix} examples/run_dqn.py ${common_arg} ${off_pol_arg} --enable-double-dqn --enable-dueling-dqn
${prefix} examples/run_dqn.py ${common_arg} ${off_pol_arg} --enable-noisy-dqn
${prefix} examples/run_dqn.py ${common_arg} ${off_pol_arg} --enable-categorical-dqn
${prefix} examples/run_dqn.py ${common_arg} ${off_pol_arg} --enable-categorical-dqn --enable-dueling-dqn

${prefix} examples/run_dqn_atari.py ${common_arg} ${off_pol_arg}
${prefix} examples/run_dqn_atari.py ${common_arg} ${off_pol_arg} --enable-double-dqn --enable-dueling-dqn
${prefix} examples/run_dqn_atari.py ${common_arg} ${off_pol_arg} --enable-noisy-dqn
${prefix} examples/run_dqn_atari.py ${common_arg} ${off_pol_arg} --enable-categorical-dqn
${prefix} examples/run_dqn_atari.py ${common_arg} ${off_pol_arg} --enable-categorical-dqn --enable-dueling-dqn

# ApeX
# common_arg="--gpu-explorer -1 --gpu-learner -1 --gpu-evaluator -1 --logging-level WARNING --max-batch 256 --batch-size 32 --param-update-freq 32 --local-buffer-size 64 --test-freq 64"
# ${prefix} examples/run_apex_ddpg.py ${common_arg} --n-env 1
# ${prefix} examples/run_apex_ddpg.py ${common_arg} --n-env 64

# GAIL
# TODO

# On-policy agents
# ${prefix} examples/run_vpg.py ${common_arg}
