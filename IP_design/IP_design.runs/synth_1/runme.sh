#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/soualo/SDK/2018.2/bin:/home/soualo/Vivado/2018.2/ids_lite/ISE/bin/lin64:/home/soualo/Vivado/2018.2/bin
else
  PATH=/home/soualo/SDK/2018.2/bin:/home/soualo/Vivado/2018.2/ids_lite/ISE/bin/lin64:/home/soualo/Vivado/2018.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/soualo/Vivado/2018.2/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/soualo/Vivado/2018.2/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/soualo/Documents/FPGA/IP_design/IP_design.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log first_zynq_system_wrapper.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source first_zynq_system_wrapper.tcl
