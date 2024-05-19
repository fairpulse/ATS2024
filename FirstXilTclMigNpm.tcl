
set outputDir ./FirstXilArb
#file mkdir $outputDir

#read_verilog [ glob ./FirstXilArb/Sources/*.v]
read_verilog {./FirstXilArb/Sources/example_top.v ./FirstXilArb/Sources/LinFedShiReg.v ./FirstXilArb/Sources/FirstXilArbiter.v ./FirstXilArb/Sources/FirstXilArbiterTop.v ./FirstXilArb/Sources/FirstXilArbiterBot.v ./FirstXilArb/Sources/uartmod.v}
read_vhdl {./FirstXilArb/Sources/UART_TXD.vhd}
read_ip ./FirstXilArb/Sources/mig_7series_0/mig_7series_0.xci
read_xdc ./FirstXilArb/Sources/extimingconstrns.xdc

#synth_ip [get_files ./FirstXilArb/Sources/mig_7series_0/mig_7series_0.xci] -force
synth_design -top example_top -part xc7a100tcsg324-1 -flatten_hierarchy none -no_lc -keep_equivalent_registers -control_set_opt_threshold 0 -no_timing_driven
write_checkpoint -force $outputDir/post_synth

opt_design -propconst

#Any Global Assignments
#place_design -unplace
current_instance arbpuf
#delete_macros *
#delete_pblocks *
#place_design -unplace

#set column { 41 45 };
#set column { 41 58 };
set column { 41 49 };
#set column { 41 67 };
#set column { 2 83 };
#set column { 0 45 };
set k 0;
#set mac {"botmac" "topmac"}
#set sub { "dffos\[$i\].dffbots" "fiabot/BotLine\[$i\].muxer" "dffos[i].dfftops" "Topline[i].muxer" }
#Challenge Width in bits
set cwidth 64;
set p 0;

#while { $k < [llength $column] } {

#set macname [lindex $mac $p];

set col [lindex $column $k];
set row 2;

#set subone "FirstIntelArbiter:fiatop";

#set dir [lindex $dire $k];
#Bottom Line Macro
set libot {}
incr p;
set j 0;
##Starting flip-flop
		set statemp [get_cells dffstabo];
		set_property BEL AFF $statemp;
		set_property IS_BEL_FIXED 1 $statemp;
		set_property LOC SLICE_X[expr {$col}]Y[expr {$row-2}] $statemp;
		set_property IS_LOC_FIXED 1 $statemp;
	 set rpmx [get_property RPM_X [get_sites SLICE_X[expr {$col}]Y[expr {$row-2}]]]		
		set rpmy [get_property RPM_Y [get_sites SLICE_X[expr {$col}]Y[expr {$row-2}]]]
		lappend libot $statemp;
		lappend libot X[expr {$rpmx}]Y[expr {$rpmy}];


##First level of multiplexer
		set teml [get_cells fiabot/muxer0];
		set_property BEL A6LUT $teml;
		set_property IS_BEL_FIXED 1 $teml;
		set_property LOC SLICE_X[expr {$col}]Y[expr {$row-1}] $teml;
		set_property IS_LOC_FIXED 1 $teml;
		#set_property LOCK_PINS {I0:A3 I1:A1 I2:A6} $teml;
		##set_property LOCK_PINS {I0:A2 I1:A5 I2:A3} $teml;
	 set rpmx [get_property RPM_X [get_sites SLICE_X[expr {$col}]Y[expr {$row-1}]]]		
		set rpmy [get_property RPM_Y [get_sites SLICE_X[expr {$col}]Y[expr {$row-1}]]]
		lappend libot $teml;
		lappend libot X[expr {$rpmx}]Y[expr {$rpmy}];
		#set_property LOC SLICE_X[expr {$rpmx}]Y[expr {$rpmy}] $teml;		

###Routing for Trigger flip-flop
		set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 NR1BEG0 NL1BEG_N3  { IMUX5 CLBLL_L_A6 }  IMUX6 CLBLL_L_A1 }  } [get_nets trigb];
 		set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 NR1BEG0 NL1BEG_N3  { IMUX5 CLBLL_L_A6 }  IMUX6 CLBLL_L_A1 }  } [get_nets fiabot/triga];
		set_property IS_ROUTE_FIXED 1 [get_nets trigb] ;
		set_property IS_ROUTE_FIXED 1 [get_nets fiabot/triga];

				
		set temd [get_cells dffos\[$j\].dffbots];
		set_property BEL AFF $temd;
		set_property IS_BEL_FIXED 1 $temd;
		set_property LOC SLICE_X[expr {$col}]Y[expr {$row-1}] $temd;
		set_property IS_LOC_FIXED 1 $temd;		
		#set_property LOC SLICE_X[expr {$col}]Y[expr {$row}] $temd;		
		lappend libot $temd;
		lappend libot X[expr {$rpmx}]Y[expr {$rpmy}];


incr j;
##All the remaining levels of Multiplexers
set ir 48;
	for {set i 0} {$i < $cwidth-1} {incr i} {

		set teml [get_cells fiabot/BotLine\[$i\].muxer];
		set_property BEL A6LUT $teml;
		set_property IS_BEL_FIXED 1 $teml;
		set_property LOC SLICE_X[expr {$col}]Y[expr {$row}] $teml;
		set_property IS_LOC_FIXED 1 $teml;
		#Locking the LUT pins to affect Routing
		#set_property LOCK_PINS {I0:A3 I1:A1 I2:A6} $teml;
	   set rpmx [get_property RPM_X [get_sites SLICE_X[expr {$col}]Y[expr {$row}]]];	
		set rpmy [get_property RPM_Y [get_sites SLICE_X[expr {$col}]Y[expr {$row}]]];
		lappend libot $teml;
		lappend libot X[expr {$rpmx}]Y[expr {$rpmy}];
		#set_property LOC SLICE_X[expr {$rpmx}]Y[expr {$rpmy}] $teml;		
				
		set temd [get_cells dffos\[$j\].dffbots];
		set_property BEL AFF $temd;
		set_property IS_BEL_FIXED 1 $temd;
		set_property LOC SLICE_X[expr {$col}]Y[expr {$row}] $temd;
		set_property IS_LOC_FIXED 1 $temd;		
		#set_property LOC SLICE_X[expr {$col}]Y[expr {$row}] $temd;		
		lappend libot $temd;
		lappend libot X[expr {$rpmx}]Y[expr {$rpmy}];
###Routing
		set_property FIXED_ROUTE {{ CLBLL_L_AQ CLBLL_LOGIC_OUTS0 IMUX0 CLBLL_L_A3 }} [get_nets chalbot\[$i\]];
 		set_property FIXED_ROUTE {{ CLBLL_L_AQ CLBLL_LOGIC_OUTS0 IMUX0 CLBLL_L_A3 }} [get_nets fiabot/chal\[$i\]];
		set_property IS_ROUTE_FIXED 1 [get_nets chalbot\[$i\]] ;
		set_property IS_ROUTE_FIXED 1 [get_nets fiabot/chal\[$i\]];
		#Due to Clock domain crossing

		if {$i != $ir} {
		set_property FIXED_ROUTE { CLBLL_L_A CLBLL_LOGIC_OUTS8 NR1BEG0 NL1BEG_N3  { IMUX5 CLBLL_L_A6 }  IMUX6 CLBLL_L_A1 } [get_nets fiabot/outwl\[$i\]];
		set_property IS_ROUTE_FIXED 1 [get_nets fiabot/outwl\[$i\]];
		} else {
		set_property FIXED_ROUTE { CLBLL_L_A CLBLL_LOGIC_OUTS8 NR1BEG0 BRKH_INT_NR1BEG0_SLOW NL1BEG_N3 { IMUX5 CLBLL_L_A6 } IMUX6 CLBLL_L_A1 } [get_nets fiabot/outwl\[$i\]];  
 		#set_property FIXED_ROUTE { CLBLL_L_A CLBLL_LOGIC_OUTS8 NE2BEG0 WR1BEG1  { IMUX3 CLBLL_L_A2 }  BYP_ALT1 BYP_BOUNCE1 IMUX5 CLBLL_L_A6 }  [get_nets fiabot/outwl\[$i\]]; 

		#set_property FIXED_ROUTE { CLBLL_L_A CLBLL_LOGIC_OUTS8 NR1BEG0 BRKH_INT_NR1BEG0_SLOW NL1BEG_N3 IMUX6 CLBLL_L_A1 } [get_nets fiabot/outwl\[$i\]];
		set_property IS_ROUTE_FIXED 1 [get_nets fiabot/outwl\[$i\]];
		}
		incr j;
		
	incr row;
	}

set_property FIXED_ROUTE {{ CLBLL_L_AQ CLBLL_LOGIC_OUTS0 IMUX0 CLBLL_L_A3 }} [get_nets chalbot\[$i\]];
set_property FIXED_ROUTE {{ CLBLL_L_AQ CLBLL_LOGIC_OUTS0 IMUX0 CLBLL_L_A3 }} [get_nets fiabot/chal\[$i\]];
		set_property IS_ROUTE_FIXED 1 [get_nets chalbot\[$i\]] ;
		set_property IS_ROUTE_FIXED 1 [get_nets fiabot/chal\[$i\]];
##Ending flip-flop
		set temd [get_cells fiabot/dffl];
		set_property BEL AFF $temd;
		set_property IS_BEL_FIXED 1 $temd;
		set_property LOC SLICE_X[expr {$col}]Y[expr {$row}] $temd;
		set_property IS_LOC_FIXED 1 $temd;	
	 set rpmx [get_property RPM_X [get_sites SLICE_X[expr {$col}]Y[expr {$row}]]]		
		set rpmy [get_property RPM_Y [get_sites SLICE_X[expr {$col}]Y[expr {$row}]]]	
		#set_property LOC SLICE_X[expr {$col}]Y[expr {$row}] $temd;		
		lappend libot $temd;
		lappend libot X[expr {$rpmx}]Y[expr {$rpmy}];

##Macros and pblocks
current_instance
create_macro botmac;
update_macro -absolute_grid botmac $libot;
create_pblock botpblock;
add_cells_to_pblock -add_primitives botpblock [get_cells -of_objects [get_macros botmac]];
resize_pblock -add SLICE_X[expr {$col-2}]Y0:SLICE_X[expr {$col+2}]Y[expr {$row}] -locs keep_only_fixed botpblock;
set_property EXCLUDE_PLACEMENT TRUE [get_pblocks botpblock];
#}

#############################################################################################
#Top Line Macro
current_instance arbpuf
set litop {}
incr k;
set col [lindex $column $k];
set row 2;
set j 0;
##Starting flip-flop
		set statemp [get_cells dffstato];
		set_property BEL AFF $statemp;
		set_property IS_BEL_FIXED 1 $statemp;
		set_property LOC SLICE_X[expr {$col}]Y[expr {$row-2}] $statemp;
		set_property IS_LOC_FIXED 1 $statemp;
	 set rpmx [get_property RPM_X [get_sites SLICE_X[expr {$col}]Y[expr {$row-2}]]]		
		set rpmy [get_property RPM_Y [get_sites SLICE_X[expr {$col}]Y[expr {$row-2}]]]
		lappend litop $statemp;
		lappend litop X[expr {$rpmx}]Y[expr {$rpmy}];
##First level of multiplexer
		set teml [get_cells fiatop/muxer0];
		set_property BEL A6LUT $teml;
		set_property IS_BEL_FIXED 1 $teml;
		set_property LOC SLICE_X[expr {$col}]Y[expr {$row-1}] $teml;
		set_property IS_LOC_FIXED 1 $teml;
		#set_property LOCK_PINS {I0:A3 I1:A1 I2:A6} $teml;
		##set_property LOCK_PINS {I0:A2 I1:A5 I2:A3} $teml;
	 set rpmx [get_property RPM_X [get_sites SLICE_X[expr {$col}]Y[expr {$row-1}]]]		
		set rpmy [get_property RPM_Y [get_sites SLICE_X[expr {$col}]Y[expr {$row-1}]]]
		lappend litop $teml;
		lappend litop X[expr {$rpmx}]Y[expr {$rpmy}];
		#set_property LOC SLICE_X[expr {$rpmx}]Y[expr {$rpmy}] $teml;	

###Routing for Trigger flip-flop
		set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 NR1BEG0 NL1BEG_N3  { IMUX5 CLBLL_L_A6 }  IMUX6 CLBLL_L_A1 }  } [get_nets triga];
 		set_property FIXED_ROUTE { { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 NR1BEG0 NL1BEG_N3  { IMUX5 CLBLL_L_A6 }  IMUX6 CLBLL_L_A1 }  } [get_nets fiatop/triga];
		set_property IS_ROUTE_FIXED 1 [get_nets triga] ;
		set_property IS_ROUTE_FIXED 1 [get_nets fiatop/triga];	
				
		set temd [get_cells dffos\[$j\].dfftops];
		set_property BEL AFF $temd;
		set_property IS_BEL_FIXED 1 $temd;
		set_property LOC SLICE_X[expr {$col}]Y[expr {$row-1}] $temd;
		set_property IS_LOC_FIXED 1 $temd;		
		#set_property LOC SLICE_X[expr {$col}]Y[expr {$row}] $temd;		
		lappend litop $temd;
		lappend litop X[expr {$rpmx}]Y[expr {$rpmy}];
incr j;
##All the remaining levels of Multiplexers
	for {set i 0} {$i < $cwidth-1} {incr i} {

		set teml [get_cells fiatop/TopLine\[$i\].muxer];
		set_property BEL A6LUT $teml;
		set_property IS_BEL_FIXED 1 $teml;
		set_property LOC SLICE_X[expr {$col}]Y[expr {$row}] $teml;
		set_property IS_LOC_FIXED 1 $teml;
		#set_property LOCK_PINS {I0:A3 I1:A1 I2:A6} $teml;
	   set rpmx [get_property RPM_X [get_sites SLICE_X[expr {$col}]Y[expr {$row}]]];		
		set rpmy [get_property RPM_Y [get_sites SLICE_X[expr {$col}]Y[expr {$row}]]];
		lappend litop $teml;
		lappend litop X[expr {$rpmx}]Y[expr {$rpmy}];
		#set_property LOC SLICE_X[expr {$rpmx}]Y[expr {$rpmy}] $teml;		
				
		set temd [get_cells dffos\[$j\].dfftops];
		set_property BEL AFF $temd;
		set_property IS_BEL_FIXED 1 $temd;
		set_property LOC SLICE_X[expr {$col}]Y[expr {$row}] $temd;
		set_property IS_LOC_FIXED 1 $temd;		
		#set_property LOC SLICE_X[expr {$col}]Y[expr {$row}] $temd;		
		lappend litop $temd;
		lappend litop X[expr {$rpmx}]Y[expr {$rpmy}];
###Routing
		set_property FIXED_ROUTE {{ CLBLL_L_AQ CLBLL_LOGIC_OUTS0 IMUX0 CLBLL_L_A3 }} [get_nets chaltop\[$i\]];
 		set_property FIXED_ROUTE {{ CLBLL_L_AQ CLBLL_LOGIC_OUTS0 IMUX0 CLBLL_L_A3 }} [get_nets fiatop/chal\[$i\]];
		set_property IS_ROUTE_FIXED 1 [get_nets chaltop\[$i\]] ;
		set_property IS_ROUTE_FIXED 1 [get_nets fiatop/chal\[$i\]];;
		if {$i != $ir} {
		set_property FIXED_ROUTE { CLBLL_L_A CLBLL_LOGIC_OUTS8 NR1BEG0 NL1BEG_N3  { IMUX5 CLBLL_L_A6 }  IMUX6 CLBLL_L_A1 } [get_nets fiatop/outwl\[$i\]];
		set_property IS_ROUTE_FIXED 1 [get_nets fiatop/outwl\[$i\]];
		} else {
		set_property FIXED_ROUTE { CLBLL_L_A CLBLL_LOGIC_OUTS8 NR1BEG0 BRKH_INT_NR1BEG0_SLOW NL1BEG_N3 { IMUX5 CLBLL_L_A6 } IMUX6 CLBLL_L_A1 } [get_nets fiatop/outwl\[$i\]];  
		#set_property FIXED_ROUTE { CLBLL_L_A CLBLL_LOGIC_OUTS8 NR1BEG0 BRKH_INT_NR1BEG0_SLOW NL1BEG_N3 IMUX6 CLBLL_L_A1 } [get_nets fiatop/outwl\[$i\]];
		set_property IS_ROUTE_FIXED 1 [get_nets fiatop/outwl\[$i\]];
		}
		incr j;
		
	incr row;
	}

set_property FIXED_ROUTE {{ CLBLL_L_AQ CLBLL_LOGIC_OUTS0 IMUX0 CLBLL_L_A3 }} [get_nets chaltop\[$i\]];
set_property FIXED_ROUTE {{ CLBLL_L_AQ CLBLL_LOGIC_OUTS0 IMUX0 CLBLL_L_A3 }} [get_nets fiatop/chal\[$i\]];
		set_property IS_ROUTE_FIXED 1 [get_nets chaltop\[$i\]] ;
		set_property IS_ROUTE_FIXED 1 [get_nets fiatop/chal\[$i\]];

##Ending flip-flop
		set temd [get_cells fiatop/dffl];
		set_property BEL AFF $temd;
		set_property IS_BEL_FIXED 1 $temd;
		set_property LOC SLICE_X[expr {$col}]Y[expr {$row}] $temd;
		set_property IS_LOC_FIXED 1 $temd;	
	 set rpmx [get_property RPM_X [get_sites SLICE_X[expr {$col}]Y[expr {$row}]]]		
		set rpmy [get_property RPM_Y [get_sites SLICE_X[expr {$col}]Y[expr {$row}]]]	
		#set_property LOC SLICE_X[expr {$col}]Y[expr {$row}] $temd;		
		lappend litop $temd;
		lappend litop X[expr {$rpmx}]Y[expr {$rpmy}];

#Arbiter
set_property BEL AFF [get_cells dffend]
#set_property LOC SLICE_X54Y66 [get_cells dffend];
set_property LOC SLICE_X45Y66 [get_cells dffend];
set_property BEL A6LUT [get_cells gclk_inferred_i_1]
#set_property LOC SLICE_X54Y66 [get_cells gclk_inferred_i_1];
set_property LOC SLICE_X45Y66 [get_cells gclk_inferred_i_1];

#Newly added on 09th March 2021
set_property FIXED_ROUTE {  { CLBLL_L_A CLBLL_LOGIC_OUTS8 NR1BEG0 NL1BEG_N3 FAN_ALT5 FAN_BOUNCE5 CLK0 CLBLL_L_CLK }  } [get_nets fiabot/outwl\[$i\]];
set_property IS_ROUTE_FIXED 1 [get_nets fiabot/outwl\[$i\]];

set_property FIXED_ROUTE {  { CLBLL_L_A CLBLL_LOGIC_OUTS8 NR1BEG0 NL1BEG_N3 FAN_ALT5 FAN_BOUNCE5 CLK0 CLBLL_L_CLK }  } [get_nets fiatop/outwl\[$i\]];
set_property IS_ROUTE_FIXED 1 [get_nets fiatop/outwl\[$i\]];
#978 ps
#set_property FIXED_ROUTE {  { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 WR1BEG1 NW2BEG1 IMUX42 CLBLL_L_D6 CLBLL_L_D CLBLL_LOGIC_OUTS11 SR1BEG_S0 IMUX9 CLBLL_L_A5 }  } [get_nets {fiatop/resp}];
#1152 ps
#set_property FIXED_ROUTE {  { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 WW2BEG0 IMUX9 CLBLL_L_A5 CLBLL_L_A CLBLL_L_AMUX CLBLL_LOGIC_OUTS16 NL1BEG1 IMUX9 CLBLL_L_A5 }  } [get_nets {fiatop/resp}];
#set_property IS_ROUTE_FIXED 1 [get_nets {fiatop/resp}];
#965 ps
#set_property FIXED_ROUTE {  { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 EE2BEG0 NR1BEG0 NL1BEG_N3 BYP_ALT3 BYP_BOUNCE3 FAN_ALT3 FAN_BOUNCE3 IMUX5 CLBLL_L_A6 }  } [get_nets {fiabot/resp}];
#1154 ps
#set_property FIXED_ROUTE {  { CLBLL_L_AQ CLBLL_LOGIC_OUTS0 EE2BEG0 NR1BEG0 NL1BEG_N3 BYP_ALT3 BYP_BOUNCE3 FAN_ALT3 FAN_BOUNCE3 BYP_ALT5 BYP_BOUNCE5 IMUX5 CLBLL_L_A6 }  } [get_nets {fiabot/resp}];
#set_property IS_ROUTE_FIXED 1 [get_nets {fiabot/resp}];

##Macros and pblocks
current_instance
create_macro topmac;
update_macro -absolute_grid topmac $litop;
create_pblock toppblock;
add_cells_to_pblock -add_primitives toppblock [get_cells -of_objects [get_macros topmac]];
resize_pblock -add SLICE_X[expr {$col-2}]Y0:SLICE_X[expr {$col+2}]Y[expr {$row}] -locs keep_only_fixed toppblock;
set_property EXCLUDE_PLACEMENT TRUE [get_pblocks toppblock];

set_property CONTAIN_ROUTING TRUE [get_pblocks botpblock];
set_property CONTAIN_ROUTING TRUE [get_pblocks toppblock];





#place_design -no_timing_driven -verbose
place_design -directive Quick -verbose
write_checkpoint -force $outputDir/post_place
#route_design -no_timing_driven -preserve -verbose
route_design -directive Quick -verbose
#route_design -finalize
write_checkpoint -force $outputDir/post_route
#start_gui

report_timing_summary -file $outputDir/post_route_tsummary.rpt
report_timing -sort_by group -max_paths 100 -path_type summary -file $outputDir/post_route_timing.rpt
report_drc -file $outputDir/post_impl_drc.rpt
write_verilog -force $outputDir/arbpufimpl_netlist.v
write_xdc -no_fixed_only -force $outputDir/arbpuf_impl.xdc
write_bitstream -force $outputDir/arbpuf.bit
#stop_gui
#start_gui
