#!/bin/csh -f
if ( ! -f "synopsys_sim.setup" ) then
touch synopsys_sim.setup 
echo "WORK > DEFAULT" >> ./synopsys_sim.setup 
echo "DEFAULT : ./lib" >> ./synopsys_sim.setup 

endif

mkdir -p lib
 
vlogan -full64 -work WORK +v2k ./hdl/and_logic.v ./sim/tb_and_logic.v 
 vcs -full64 WORK.tb_and_logic  -time ps -debug_all 

if(-f "simv") then 
        ./simv -gui 
endif