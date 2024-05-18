create_clock -period 10.000 -name extclk -waveform {0.000 5.000} -add [get_ports CLK]

create_generated_clock -name sysclk -source [get_ports CLK] -divide_by 1 [get_nets sysclk]
#create_generated_clock -name lfsrclk -source [get_ports CLK] -divide_by 1 [get_nets lfsrclk]
create_generated_clock -name uartclk -source [get_ports CLK] -divide_by 1 [get_nets uartclk];
create_generated_clock -name pufclk -source [get_ports CLK] -divide_by 1 [get_nets pufclk];

#create_generated_clock -name sysclk -source [get_ports CLK] -divide_by 1 -invert [get_nets sysclk]
#create_generated_clock -name lfsrclk -source [get_ports CLK] -divide_by 1 -invert [get_nets lfsrclk]
#create_generated_clock -name uartclk -source [get_ports CLK] -divide_by 1 -invert [get_nets uartclk];
#create_generated_clock -name pufclk -source [get_ports CLK] -divide_by 1 -invert [get_nets pufclk];

set_clock_groups -name modclocks -asynchronous -group [get_clocks {uartclk pufclk}]
#set_clock_groups -name modclocks -asynchronous -group [get_clocks {lfsrclk sysclk}]

#create_generated_clock -name sys_clk_i -source [get_ports CLK] -multiply_by 2 [get_nets sys_clk_i];
#create_generated_clock -name d16clk -source [get_ports CLK] -divide_by 2 [get_nets d16clk];
##set_clock_groups -logically_exclusive -group sys_clk_pin -group sysclk;
##set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets migcore/inpclk];
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets inpclk];
#set_property IOSTANDARD LVCMOS25 [get_ports {init_calib_complete}]
#set_property PACKAGE_PIN H17 [get_ports {init_calib_complete}]

#Uncomment for CASE II of paper
#set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets arbpuf/Q];
#set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets arbpuf/Qn];

# PadFunction: IO_L24P_T3_RS1_15
#set_property IOSTANDARD LVCMOS25 [get_ports tg_compare_error]
#set_property PACKAGE_PIN K15 [get_ports tg_compare_error]

set_property PACKAGE_PIN E3 [get_ports CLK]
set_property IOSTANDARD LVCMOS18 [get_ports CLK]
set_property PACKAGE_PIN D4 [get_ports txd]
set_property IOSTANDARD LVCMOS18 [get_ports txd]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
