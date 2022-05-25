#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Wed May 18 16:47:37 CEST 2022
# SW Build 2700185 on Thu Oct 24 18:45:48 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim tb_operativeUnit_behav -key {Behavioral:sim_1:Functional:tb_operativeUnit} -tclbatch tb_operativeUnit.tcl -view /homes/j21decae/SAR/sobel/tb_operativeUnit_behav.wcfg -log simulate.log"
xsim tb_operativeUnit_behav -key {Behavioral:sim_1:Functional:tb_operativeUnit} -tclbatch tb_operativeUnit.tcl -view /homes/j21decae/SAR/sobel/tb_operativeUnit_behav.wcfg -log simulate.log

