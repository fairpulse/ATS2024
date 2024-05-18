// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed Jan 17 15:06:26 2024
// Host        : RSC-Precision-T3600 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force ./ModFirstXilArb/arbpufimpl_netlist.v
// Design      : d5example_top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module UART_TXD
   (SEND,
    DATA,
    CLK,
    READY,
    UART_TX);
  input SEND;
  input [7:0]DATA;
  input CLK;
  output READY;
  output UART_TX;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [7:0]DATA;
  wire \FSM_sequential_txState[0]_i_1_n_0 ;
  wire \FSM_sequential_txState[0]_i_2_n_0 ;
  wire \FSM_sequential_txState[0]_i_3_n_0 ;
  wire \FSM_sequential_txState[0]_i_4_n_0 ;
  wire \FSM_sequential_txState[0]_i_5_n_0 ;
  wire \FSM_sequential_txState[0]_i_6_n_0 ;
  wire \FSM_sequential_txState[0]_i_7_n_0 ;
  wire \FSM_sequential_txState[0]_i_8_n_0 ;
  wire \FSM_sequential_txState[0]_i_9_n_0 ;
  wire \FSM_sequential_txState[1]_i_1_n_0 ;
  wire \FSM_sequential_txState[1]_i_3_n_0 ;
  wire \FSM_sequential_txState[1]_i_4_n_0 ;
  wire READY;
  wire SEND;
  wire UART_TX;
  wire bitIndex;
  wire \bitIndex[0]_i_2_n_0 ;
  wire [30:0]bitIndex_reg;
  wire \bitIndex_reg[0]_i_1_n_0 ;
  wire \bitIndex_reg[0]_i_1_n_4 ;
  wire \bitIndex_reg[0]_i_1_n_5 ;
  wire \bitIndex_reg[0]_i_1_n_6 ;
  wire \bitIndex_reg[0]_i_1_n_7 ;
  wire \bitIndex_reg[12]_i_1_n_0 ;
  wire \bitIndex_reg[12]_i_1_n_4 ;
  wire \bitIndex_reg[12]_i_1_n_5 ;
  wire \bitIndex_reg[12]_i_1_n_6 ;
  wire \bitIndex_reg[12]_i_1_n_7 ;
  wire \bitIndex_reg[16]_i_1_n_0 ;
  wire \bitIndex_reg[16]_i_1_n_4 ;
  wire \bitIndex_reg[16]_i_1_n_5 ;
  wire \bitIndex_reg[16]_i_1_n_6 ;
  wire \bitIndex_reg[16]_i_1_n_7 ;
  wire \bitIndex_reg[20]_i_1_n_0 ;
  wire \bitIndex_reg[20]_i_1_n_4 ;
  wire \bitIndex_reg[20]_i_1_n_5 ;
  wire \bitIndex_reg[20]_i_1_n_6 ;
  wire \bitIndex_reg[20]_i_1_n_7 ;
  wire \bitIndex_reg[24]_i_1_n_0 ;
  wire \bitIndex_reg[24]_i_1_n_4 ;
  wire \bitIndex_reg[24]_i_1_n_5 ;
  wire \bitIndex_reg[24]_i_1_n_6 ;
  wire \bitIndex_reg[24]_i_1_n_7 ;
  wire \bitIndex_reg[28]_i_1_n_5 ;
  wire \bitIndex_reg[28]_i_1_n_6 ;
  wire \bitIndex_reg[28]_i_1_n_7 ;
  wire \bitIndex_reg[4]_i_1_n_0 ;
  wire \bitIndex_reg[4]_i_1_n_4 ;
  wire \bitIndex_reg[4]_i_1_n_5 ;
  wire \bitIndex_reg[4]_i_1_n_6 ;
  wire \bitIndex_reg[4]_i_1_n_7 ;
  wire \bitIndex_reg[8]_i_1_n_0 ;
  wire \bitIndex_reg[8]_i_1_n_4 ;
  wire \bitIndex_reg[8]_i_1_n_5 ;
  wire \bitIndex_reg[8]_i_1_n_6 ;
  wire \bitIndex_reg[8]_i_1_n_7 ;
  wire bitTmr;
  wire \bitTmr[0]_i_3_n_0 ;
  wire [13:0]bitTmr_reg;
  wire \bitTmr_reg[0]_i_2_n_0 ;
  wire \bitTmr_reg[0]_i_2_n_4 ;
  wire \bitTmr_reg[0]_i_2_n_5 ;
  wire \bitTmr_reg[0]_i_2_n_6 ;
  wire \bitTmr_reg[0]_i_2_n_7 ;
  wire \bitTmr_reg[12]_i_1_n_6 ;
  wire \bitTmr_reg[12]_i_1_n_7 ;
  wire \bitTmr_reg[4]_i_1_n_0 ;
  wire \bitTmr_reg[4]_i_1_n_4 ;
  wire \bitTmr_reg[4]_i_1_n_5 ;
  wire \bitTmr_reg[4]_i_1_n_6 ;
  wire \bitTmr_reg[4]_i_1_n_7 ;
  wire \bitTmr_reg[8]_i_1_n_0 ;
  wire \bitTmr_reg[8]_i_1_n_4 ;
  wire \bitTmr_reg[8]_i_1_n_5 ;
  wire \bitTmr_reg[8]_i_1_n_6 ;
  wire \bitTmr_reg[8]_i_1_n_7 ;
  wire eqOp;
  wire txBit_i_2_n_0;
  wire txBit_i_3_n_0;
  wire txBit_i_4_n_0;
  wire [8:1]txData;
  (* RTL_KEEP = "yes" *) wire [1:0]txState;
  wire [3:0]\NLW_bitIndex_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_bitIndex_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_bitIndex_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_bitIndex_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_bitIndex_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_bitIndex_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_bitIndex_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_bitTmr_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_bitTmr_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_bitTmr_reg[8]_i_1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h45)) 
    \FSM_sequential_txState[0]_i_1 
       (.I0(txState[0]),
        .I1(\FSM_sequential_txState[0]_i_2_n_0 ),
        .I2(\FSM_sequential_txState[0]_i_3_n_0 ),
        .O(\FSM_sequential_txState[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \FSM_sequential_txState[0]_i_2 
       (.I0(\FSM_sequential_txState[0]_i_4_n_0 ),
        .I1(\FSM_sequential_txState[0]_i_5_n_0 ),
        .I2(bitIndex_reg[1]),
        .I3(bitIndex_reg[29]),
        .I4(bitIndex_reg[17]),
        .I5(\FSM_sequential_txState[0]_i_6_n_0 ),
        .O(\FSM_sequential_txState[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \FSM_sequential_txState[0]_i_3 
       (.I0(bitIndex_reg[4]),
        .I1(bitIndex_reg[2]),
        .I2(bitIndex_reg[0]),
        .I3(\FSM_sequential_txState[0]_i_7_n_0 ),
        .I4(\FSM_sequential_txState[0]_i_8_n_0 ),
        .I5(\FSM_sequential_txState[0]_i_9_n_0 ),
        .O(\FSM_sequential_txState[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_txState[0]_i_4 
       (.I0(bitIndex_reg[23]),
        .I1(bitIndex_reg[20]),
        .I2(bitIndex_reg[25]),
        .I3(bitIndex_reg[22]),
        .O(\FSM_sequential_txState[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_txState[0]_i_5 
       (.I0(bitIndex_reg[19]),
        .I1(bitIndex_reg[16]),
        .I2(bitIndex_reg[21]),
        .I3(bitIndex_reg[18]),
        .O(\FSM_sequential_txState[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_txState[0]_i_6 
       (.I0(bitIndex_reg[27]),
        .I1(bitIndex_reg[24]),
        .I2(bitIndex_reg[3]),
        .I3(bitIndex_reg[26]),
        .O(\FSM_sequential_txState[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_txState[0]_i_7 
       (.I0(bitIndex_reg[8]),
        .I1(bitIndex_reg[7]),
        .I2(bitIndex_reg[6]),
        .I3(bitIndex_reg[5]),
        .O(\FSM_sequential_txState[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_txState[0]_i_8 
       (.I0(bitIndex_reg[12]),
        .I1(bitIndex_reg[11]),
        .I2(bitIndex_reg[10]),
        .I3(bitIndex_reg[9]),
        .O(\FSM_sequential_txState[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_sequential_txState[0]_i_9 
       (.I0(bitIndex_reg[13]),
        .I1(bitIndex_reg[14]),
        .I2(bitIndex_reg[15]),
        .I3(bitIndex_reg[28]),
        .I4(bitIndex_reg[30]),
        .I5(txState[1]),
        .O(\FSM_sequential_txState[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \FSM_sequential_txState[1]_i_1 
       (.I0(SEND),
        .I1(eqOp),
        .I2(txState[1]),
        .I3(txState[0]),
        .O(\FSM_sequential_txState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \FSM_sequential_txState[1]_i_2 
       (.I0(\FSM_sequential_txState[1]_i_3_n_0 ),
        .I1(bitTmr_reg[1]),
        .I2(bitTmr_reg[0]),
        .I3(bitTmr_reg[3]),
        .I4(bitTmr_reg[2]),
        .I5(\FSM_sequential_txState[1]_i_4_n_0 ),
        .O(eqOp));
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_sequential_txState[1]_i_3 
       (.I0(bitTmr_reg[6]),
        .I1(bitTmr_reg[7]),
        .I2(bitTmr_reg[5]),
        .I3(bitTmr_reg[4]),
        .O(\FSM_sequential_txState[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \FSM_sequential_txState[1]_i_4 
       (.I0(bitTmr_reg[8]),
        .I1(bitTmr_reg[9]),
        .I2(bitTmr_reg[11]),
        .I3(bitTmr_reg[10]),
        .I4(bitTmr_reg[12]),
        .I5(bitTmr_reg[13]),
        .O(\FSM_sequential_txState[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "send_bit:10,load_bit:01,rdy:00" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_txState_reg[0] 
       (.C(CLK),
        .CE(\FSM_sequential_txState[1]_i_1_n_0 ),
        .D(\FSM_sequential_txState[0]_i_1_n_0 ),
        .Q(txState[0]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "send_bit:10,load_bit:01,rdy:00" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_txState_reg[1] 
       (.C(CLK),
        .CE(\FSM_sequential_txState[1]_i_1_n_0 ),
        .D(bitIndex),
        .Q(txState[1]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h1)) 
    READY_INST_0
       (.I0(txState[0]),
        .I1(txState[1]),
        .O(READY));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \bitIndex[0]_i_2 
       (.I0(bitIndex_reg[0]),
        .O(\bitIndex[0]_i_2_n_0 ));
  FDRE \bitIndex_reg[0] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[0]_i_1_n_7 ),
        .Q(bitIndex_reg[0]),
        .R(READY));
  CARRY4 \bitIndex_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\bitIndex_reg[0]_i_1_n_0 ,\NLW_bitIndex_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\bitIndex_reg[0]_i_1_n_4 ,\bitIndex_reg[0]_i_1_n_5 ,\bitIndex_reg[0]_i_1_n_6 ,\bitIndex_reg[0]_i_1_n_7 }),
        .S({bitIndex_reg[3:1],\bitIndex[0]_i_2_n_0 }));
  FDRE \bitIndex_reg[10] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[8]_i_1_n_5 ),
        .Q(bitIndex_reg[10]),
        .R(READY));
  FDRE \bitIndex_reg[11] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[8]_i_1_n_4 ),
        .Q(bitIndex_reg[11]),
        .R(READY));
  FDRE \bitIndex_reg[12] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[12]_i_1_n_7 ),
        .Q(bitIndex_reg[12]),
        .R(READY));
  CARRY4 \bitIndex_reg[12]_i_1 
       (.CI(\bitIndex_reg[8]_i_1_n_0 ),
        .CO({\bitIndex_reg[12]_i_1_n_0 ,\NLW_bitIndex_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bitIndex_reg[12]_i_1_n_4 ,\bitIndex_reg[12]_i_1_n_5 ,\bitIndex_reg[12]_i_1_n_6 ,\bitIndex_reg[12]_i_1_n_7 }),
        .S(bitIndex_reg[15:12]));
  FDRE \bitIndex_reg[13] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[12]_i_1_n_6 ),
        .Q(bitIndex_reg[13]),
        .R(READY));
  FDRE \bitIndex_reg[14] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[12]_i_1_n_5 ),
        .Q(bitIndex_reg[14]),
        .R(READY));
  FDRE \bitIndex_reg[15] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[12]_i_1_n_4 ),
        .Q(bitIndex_reg[15]),
        .R(READY));
  FDRE \bitIndex_reg[16] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[16]_i_1_n_7 ),
        .Q(bitIndex_reg[16]),
        .R(READY));
  CARRY4 \bitIndex_reg[16]_i_1 
       (.CI(\bitIndex_reg[12]_i_1_n_0 ),
        .CO({\bitIndex_reg[16]_i_1_n_0 ,\NLW_bitIndex_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bitIndex_reg[16]_i_1_n_4 ,\bitIndex_reg[16]_i_1_n_5 ,\bitIndex_reg[16]_i_1_n_6 ,\bitIndex_reg[16]_i_1_n_7 }),
        .S(bitIndex_reg[19:16]));
  FDRE \bitIndex_reg[17] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[16]_i_1_n_6 ),
        .Q(bitIndex_reg[17]),
        .R(READY));
  FDRE \bitIndex_reg[18] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[16]_i_1_n_5 ),
        .Q(bitIndex_reg[18]),
        .R(READY));
  FDRE \bitIndex_reg[19] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[16]_i_1_n_4 ),
        .Q(bitIndex_reg[19]),
        .R(READY));
  FDRE \bitIndex_reg[1] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[0]_i_1_n_6 ),
        .Q(bitIndex_reg[1]),
        .R(READY));
  FDRE \bitIndex_reg[20] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[20]_i_1_n_7 ),
        .Q(bitIndex_reg[20]),
        .R(READY));
  CARRY4 \bitIndex_reg[20]_i_1 
       (.CI(\bitIndex_reg[16]_i_1_n_0 ),
        .CO({\bitIndex_reg[20]_i_1_n_0 ,\NLW_bitIndex_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bitIndex_reg[20]_i_1_n_4 ,\bitIndex_reg[20]_i_1_n_5 ,\bitIndex_reg[20]_i_1_n_6 ,\bitIndex_reg[20]_i_1_n_7 }),
        .S(bitIndex_reg[23:20]));
  FDRE \bitIndex_reg[21] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[20]_i_1_n_6 ),
        .Q(bitIndex_reg[21]),
        .R(READY));
  FDRE \bitIndex_reg[22] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[20]_i_1_n_5 ),
        .Q(bitIndex_reg[22]),
        .R(READY));
  FDRE \bitIndex_reg[23] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[20]_i_1_n_4 ),
        .Q(bitIndex_reg[23]),
        .R(READY));
  FDRE \bitIndex_reg[24] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[24]_i_1_n_7 ),
        .Q(bitIndex_reg[24]),
        .R(READY));
  CARRY4 \bitIndex_reg[24]_i_1 
       (.CI(\bitIndex_reg[20]_i_1_n_0 ),
        .CO({\bitIndex_reg[24]_i_1_n_0 ,\NLW_bitIndex_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bitIndex_reg[24]_i_1_n_4 ,\bitIndex_reg[24]_i_1_n_5 ,\bitIndex_reg[24]_i_1_n_6 ,\bitIndex_reg[24]_i_1_n_7 }),
        .S(bitIndex_reg[27:24]));
  FDRE \bitIndex_reg[25] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[24]_i_1_n_6 ),
        .Q(bitIndex_reg[25]),
        .R(READY));
  FDRE \bitIndex_reg[26] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[24]_i_1_n_5 ),
        .Q(bitIndex_reg[26]),
        .R(READY));
  FDRE \bitIndex_reg[27] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[24]_i_1_n_4 ),
        .Q(bitIndex_reg[27]),
        .R(READY));
  FDRE \bitIndex_reg[28] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[28]_i_1_n_7 ),
        .Q(bitIndex_reg[28]),
        .R(READY));
  CARRY4 \bitIndex_reg[28]_i_1 
       (.CI(\bitIndex_reg[24]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bitIndex_reg[28]_i_1_n_5 ,\bitIndex_reg[28]_i_1_n_6 ,\bitIndex_reg[28]_i_1_n_7 }),
        .S({\<const0> ,bitIndex_reg[30:28]}));
  FDRE \bitIndex_reg[29] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[28]_i_1_n_6 ),
        .Q(bitIndex_reg[29]),
        .R(READY));
  FDRE \bitIndex_reg[2] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[0]_i_1_n_5 ),
        .Q(bitIndex_reg[2]),
        .R(READY));
  FDRE \bitIndex_reg[30] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[28]_i_1_n_5 ),
        .Q(bitIndex_reg[30]),
        .R(READY));
  FDRE \bitIndex_reg[3] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[0]_i_1_n_4 ),
        .Q(bitIndex_reg[3]),
        .R(READY));
  FDRE \bitIndex_reg[4] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[4]_i_1_n_7 ),
        .Q(bitIndex_reg[4]),
        .R(READY));
  CARRY4 \bitIndex_reg[4]_i_1 
       (.CI(\bitIndex_reg[0]_i_1_n_0 ),
        .CO({\bitIndex_reg[4]_i_1_n_0 ,\NLW_bitIndex_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bitIndex_reg[4]_i_1_n_4 ,\bitIndex_reg[4]_i_1_n_5 ,\bitIndex_reg[4]_i_1_n_6 ,\bitIndex_reg[4]_i_1_n_7 }),
        .S(bitIndex_reg[7:4]));
  FDRE \bitIndex_reg[5] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[4]_i_1_n_6 ),
        .Q(bitIndex_reg[5]),
        .R(READY));
  FDRE \bitIndex_reg[6] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[4]_i_1_n_5 ),
        .Q(bitIndex_reg[6]),
        .R(READY));
  FDRE \bitIndex_reg[7] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[4]_i_1_n_4 ),
        .Q(bitIndex_reg[7]),
        .R(READY));
  FDRE \bitIndex_reg[8] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[8]_i_1_n_7 ),
        .Q(bitIndex_reg[8]),
        .R(READY));
  CARRY4 \bitIndex_reg[8]_i_1 
       (.CI(\bitIndex_reg[4]_i_1_n_0 ),
        .CO({\bitIndex_reg[8]_i_1_n_0 ,\NLW_bitIndex_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bitIndex_reg[8]_i_1_n_4 ,\bitIndex_reg[8]_i_1_n_5 ,\bitIndex_reg[8]_i_1_n_6 ,\bitIndex_reg[8]_i_1_n_7 }),
        .S(bitIndex_reg[11:8]));
  FDRE \bitIndex_reg[9] 
       (.C(CLK),
        .CE(bitIndex),
        .D(\bitIndex_reg[8]_i_1_n_6 ),
        .Q(bitIndex_reg[9]),
        .R(READY));
  LUT3 #(
    .INIT(8'hF1)) 
    \bitTmr[0]_i_1 
       (.I0(txState[1]),
        .I1(txState[0]),
        .I2(eqOp),
        .O(bitTmr));
  LUT1 #(
    .INIT(2'h1)) 
    \bitTmr[0]_i_3 
       (.I0(bitTmr_reg[0]),
        .O(\bitTmr[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bitTmr_reg[0]_i_2_n_7 ),
        .Q(bitTmr_reg[0]),
        .R(bitTmr));
  CARRY4 \bitTmr_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\bitTmr_reg[0]_i_2_n_0 ,\NLW_bitTmr_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\bitTmr_reg[0]_i_2_n_4 ,\bitTmr_reg[0]_i_2_n_5 ,\bitTmr_reg[0]_i_2_n_6 ,\bitTmr_reg[0]_i_2_n_7 }),
        .S({bitTmr_reg[3:1],\bitTmr[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[10] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bitTmr_reg[8]_i_1_n_5 ),
        .Q(bitTmr_reg[10]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[11] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bitTmr_reg[8]_i_1_n_4 ),
        .Q(bitTmr_reg[11]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[12] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bitTmr_reg[12]_i_1_n_7 ),
        .Q(bitTmr_reg[12]),
        .R(bitTmr));
  CARRY4 \bitTmr_reg[12]_i_1 
       (.CI(\bitTmr_reg[8]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bitTmr_reg[12]_i_1_n_6 ,\bitTmr_reg[12]_i_1_n_7 }),
        .S({\<const0> ,\<const0> ,bitTmr_reg[13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[13] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bitTmr_reg[12]_i_1_n_6 ),
        .Q(bitTmr_reg[13]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bitTmr_reg[0]_i_2_n_6 ),
        .Q(bitTmr_reg[1]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bitTmr_reg[0]_i_2_n_5 ),
        .Q(bitTmr_reg[2]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bitTmr_reg[0]_i_2_n_4 ),
        .Q(bitTmr_reg[3]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bitTmr_reg[4]_i_1_n_7 ),
        .Q(bitTmr_reg[4]),
        .R(bitTmr));
  CARRY4 \bitTmr_reg[4]_i_1 
       (.CI(\bitTmr_reg[0]_i_2_n_0 ),
        .CO({\bitTmr_reg[4]_i_1_n_0 ,\NLW_bitTmr_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bitTmr_reg[4]_i_1_n_4 ,\bitTmr_reg[4]_i_1_n_5 ,\bitTmr_reg[4]_i_1_n_6 ,\bitTmr_reg[4]_i_1_n_7 }),
        .S(bitTmr_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bitTmr_reg[4]_i_1_n_6 ),
        .Q(bitTmr_reg[5]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bitTmr_reg[4]_i_1_n_5 ),
        .Q(bitTmr_reg[6]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bitTmr_reg[4]_i_1_n_4 ),
        .Q(bitTmr_reg[7]),
        .R(bitTmr));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bitTmr_reg[8]_i_1_n_7 ),
        .Q(bitTmr_reg[8]),
        .R(bitTmr));
  CARRY4 \bitTmr_reg[8]_i_1 
       (.CI(\bitTmr_reg[4]_i_1_n_0 ),
        .CO({\bitTmr_reg[8]_i_1_n_0 ,\NLW_bitTmr_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\bitTmr_reg[8]_i_1_n_4 ,\bitTmr_reg[8]_i_1_n_5 ,\bitTmr_reg[8]_i_1_n_6 ,\bitTmr_reg[8]_i_1_n_7 }),
        .S(bitTmr_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \bitTmr_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bitTmr_reg[8]_i_1_n_6 ),
        .Q(bitTmr_reg[9]),
        .R(bitTmr));
  LUT2 #(
    .INIT(4'h2)) 
    txBit_i_1
       (.I0(txState[0]),
        .I1(txState[1]),
        .O(bitIndex));
  LUT6 #(
    .INIT(64'hEEFFEEF0EE0FEE00)) 
    txBit_i_2
       (.I0(txData[8]),
        .I1(bitIndex_reg[0]),
        .I2(bitIndex_reg[2]),
        .I3(bitIndex_reg[3]),
        .I4(txBit_i_3_n_0),
        .I5(txBit_i_4_n_0),
        .O(txBit_i_2_n_0));
  LUT5 #(
    .INIT(32'hFAC00AC0)) 
    txBit_i_3
       (.I0(txData[2]),
        .I1(txData[1]),
        .I2(bitIndex_reg[0]),
        .I3(bitIndex_reg[1]),
        .I4(txData[3]),
        .O(txBit_i_3_n_0));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    txBit_i_4
       (.I0(txData[5]),
        .I1(txData[7]),
        .I2(bitIndex_reg[1]),
        .I3(txData[4]),
        .I4(bitIndex_reg[0]),
        .I5(txData[6]),
        .O(txBit_i_4_n_0));
  FDSE #(
    .INIT(1'b1)) 
    txBit_reg
       (.C(CLK),
        .CE(bitIndex),
        .D(txBit_i_2_n_0),
        .Q(UART_TX),
        .S(READY));
  FDRE \txData_reg[1] 
       (.C(CLK),
        .CE(SEND),
        .D(DATA[0]),
        .Q(txData[1]),
        .R(\<const0> ));
  FDRE \txData_reg[2] 
       (.C(CLK),
        .CE(SEND),
        .D(DATA[1]),
        .Q(txData[2]),
        .R(\<const0> ));
  FDRE \txData_reg[3] 
       (.C(CLK),
        .CE(SEND),
        .D(DATA[2]),
        .Q(txData[3]),
        .R(\<const0> ));
  FDRE \txData_reg[4] 
       (.C(CLK),
        .CE(SEND),
        .D(DATA[3]),
        .Q(txData[4]),
        .R(\<const0> ));
  FDRE \txData_reg[5] 
       (.C(CLK),
        .CE(SEND),
        .D(DATA[4]),
        .Q(txData[5]),
        .R(\<const0> ));
  FDRE \txData_reg[6] 
       (.C(CLK),
        .CE(SEND),
        .D(DATA[5]),
        .Q(txData[6]),
        .R(\<const0> ));
  FDRE \txData_reg[7] 
       (.C(CLK),
        .CE(SEND),
        .D(DATA[6]),
        .Q(txData[7]),
        .R(\<const0> ));
  FDRE \txData_reg[8] 
       (.C(CLK),
        .CE(SEND),
        .D(DATA[7]),
        .Q(txData[8]),
        .R(\<const0> ));
endmodule

(* cwidth = "16" *) 
module d5FirstXilArbiter
   (clk,
    en,
    .rst(clear[0]),
    ten,
    chalin,
    resp);
  input clk;
  input en;
  input ten;
  input [15:0]chalin;
  output resp;
     input [15:0]clear;

  wire \<const0> ;
  wire \<const1> ;
  (* RTL_KEEP = "true" *) wire Qn;
  (* RTL_KEEP = "true" *) wire [15:0]chalbot;
  wire [15:0]chalin;
  (* RTL_KEEP = "true" *) wire [15:0]chaltop;
  (* RTL_KEEP = "true" *) wire [15:0]clear;
  wire clk;
  wire en;
  wire resp;
  (* RTL_KEEP = "true" *) wire respbot;
  (* RTL_KEEP = "true" *) wire resptop;
  (* RTL_KEEP = "true" *) wire stacenb;
  (* RTL_KEEP = "true" *) wire stacent;
  wire ten;
  (* RTL_KEEP = "true" *) wire triga;
  (* RTL_KEEP = "true" *) wire trigb;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    dff3
       (.C(ten),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(Qn),
        .Q(resp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b0)) 
    dffend
       (.CLR(clear[0]),
        .D(resptop),
        .G(respbot),
        .GE(\<const1> ),
        .Q(Qn));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[0].dffbots 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[0]),
        .Q(chalbot[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[0].dfftops 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[0]),
        .Q(chaltop[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[10].dffbots 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[10]),
        .Q(chalbot[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[10].dfftops 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[10]),
        .Q(chaltop[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[11].dffbots 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[11]),
        .Q(chalbot[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[11].dfftops 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[11]),
        .Q(chaltop[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[12].dffbots 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[12]),
        .Q(chalbot[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[12].dfftops 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[12]),
        .Q(chaltop[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[13].dffbots 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[13]),
        .Q(chalbot[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[13].dfftops 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[13]),
        .Q(chaltop[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[14].dffbots 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[14]),
        .Q(chalbot[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[14].dfftops 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[14]),
        .Q(chaltop[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[15].dffbots 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[15]),
        .Q(chalbot[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[15].dfftops 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[15]),
        .Q(chaltop[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[1].dffbots 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[1]),
        .Q(chalbot[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[1].dfftops 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[1]),
        .Q(chaltop[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[2].dffbots 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[2]),
        .Q(chalbot[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[2].dfftops 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[2]),
        .Q(chaltop[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[3].dffbots 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[3]),
        .Q(chalbot[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[3].dfftops 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[3]),
        .Q(chaltop[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[4].dffbots 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[4]),
        .Q(chalbot[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[4].dfftops 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[4]),
        .Q(chaltop[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[5].dffbots 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[5]),
        .Q(chalbot[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[5].dfftops 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[5]),
        .Q(chaltop[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[6].dffbots 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[6]),
        .Q(chalbot[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[6].dfftops 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[6]),
        .Q(chaltop[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[7].dffbots 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[7]),
        .Q(chalbot[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[7].dfftops 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[7]),
        .Q(chaltop[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[8].dffbots 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[8]),
        .Q(chalbot[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[8].dfftops 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[8]),
        .Q(chaltop[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[9].dffbots 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[9]),
        .Q(chalbot[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dffos[9].dfftops 
       (.C(clk),
        .CE(\<const1> ),
        .CLR(clear[0]),
        .D(chalin[9]),
        .Q(chaltop[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    dffstabo
       (.C(clk),
        .CE(stacenb),
        .CLR(clear[0]),
        .D(\<const1> ),
        .Q(trigb));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    dffstato
       (.C(clk),
        .CE(stacent),
        .CLR(clear[0]),
        .D(\<const1> ),
        .Q(triga));
  (* DONT_TOUCH *) 
  (* cwidth = "16" *) 
  dddFirstXilArbiterBot fiabot
       (.chal(chalbot),
        .clr(clear[0]),
        .resp(respbot),
        .trig(trigb));
  (* DONT_TOUCH *) 
  (* cwidth = "16" *) 
  dddFirstXilArbiterTop fiatop
       (.chal(chaltop),
        .pre(clear[0]),
        .resp(resptop),
        .trig(triga));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    stacenb_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(en),
        .Q(stacenb),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    stacent_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(en),
        .Q(stacent),
        .R(\<const0> ));
endmodule

(* ECO_CHECKSUM = "ae815b9b" *) (* S0 = "4'b0000" *) (* S1 = "4'b0001" *) 
(* S10 = "4'b1111" *) (* S11 = "4'b1110" *) (* S12 = "4'b1010" *) 
(* S13 = "4'b1011" *) (* S14 = "4'b1001" *) (* S15 = "4'b1000" *) 
(* S2 = "4'b0011" *) (* S3 = "4'b0010" *) (* S4 = "4'b0110" *) 
(* S5 = "4'b0111" *) (* S6 = "4'b0101" *) (* S7 = "4'b0100" *) 
(* S8 = "4'b1100" *) (* S9 = "4'b1101" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module d5example_top
   (CLK,
    txd);
  input CLK;
  output txd;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire CLK_IBUF;
  wire GND_2;
  wire [3:0]NS6_out;
  wire NS_inferred__0_i_6_n_0;
  wire NS_inferred__0_i_7_n_0;
  wire NS_inferred__0_i_8_n_0;
  wire ONE;
  (* RTL_KEEP = "true" *) wire [3:0]PS;
  wire \PS[0]_i_2_n_0 ;
  wire \PS[0]_i_3_n_0 ;
  wire \PS[0]_i_4_n_0 ;
  wire \PS[2]_i_2_n_0 ;
  wire \PS[3]_i_2_n_0 ;
  wire \PS[3]_i_3_n_0 ;
  wire \PS[3]_i_4_n_0 ;
  wire VCC_2;
  wire allover;
  (* RTL_KEEP = "true" *) wire [15:0]chalin;
  wire chalin_reg0;
  (* RTL_KEEP = "true" *) wire [15:0]chalw;
  wire \chalw[15]_i_1_n_0 ;
  wire \chalw[15]_i_2_n_0 ;
  wire \chalw_reg[12]_i_1_n_0 ;
  wire \chalw_reg[4]_i_1_n_0 ;
  wire \chalw_reg[8]_i_1_n_0 ;
  wire gosen;
  wire jr0;
  wire \jr[5]_i_1_n_0 ;
  wire \jr[5]_i_4_n_0 ;
  wire \jr[5]_i_5_n_0 ;
  wire \jr[5]_i_6_n_0 ;
  wire [5:0]jr_reg__0;
  wire [5:0]p_0_in__0;
  wire [15:0]p_2_in;
  wire [1:0]p_3_in__0;
  (* RTL_KEEP = "true" *) wire pufclk;
  (* RTL_KEEP = "true" *) wire pufcou;
  wire pufcou_i_1_n_0;
  wire pufcou_i_2_n_0;
  wire pufcou_i_3_n_0;
  (* RTL_KEEP = "true" *) wire pufen;
  wire pufrst;
  (* RTL_KEEP = "true" *) wire [63:0]rddata;
  (* RTL_KEEP = "true" *) wire resp;
  (* RTL_KEEP = "true" *) wire [7:0]rtempw;
  wire \rtempw[0]_i_1_n_0 ;
  wire \rtempw[1]_i_1_n_0 ;
  wire \rtempw[2]_i_1_n_0 ;
  wire \rtempw[3]_i_1_n_0 ;
  wire \rtempw[4]_i_1_n_0 ;
  wire \rtempw[5]_i_1_n_0 ;
  wire \rtempw[6]_i_1_n_0 ;
  wire \rtempw[7]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) wire sysclk;
  (* RTL_KEEP = "true" *) wire [63:0]tempw;
  (* RTL_KEEP = "true" *) wire ten;
  (* RTL_KEEP = "true" *) wire [2:0]tmvc;
  wire \tmvc[2]_i_1_n_0 ;
  wire \tmvc[2]_i_2_n_0 ;
  wire \tmvc[2]_i_3_n_0 ;
  (* RTL_KEEP = "true" *) wire ttmvc;
  wire txd;
  wire txd_OBUF;
  (* RTL_KEEP = "true" *) wire uartRdy;
  (* RTL_KEEP = "true" *) wire uartclk;
  (* RTL_KEEP = "true" *) wire uartdone;
  wire [3:0]\NLW_chalw_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_chalw_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_chalw_reg[8]_i_1_CO_UNCONNECTED ;

  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  LUT6 #(
    .INIT(64'hFF00F80CCF00F80C)) 
    NS_inferred__0_i_1
       (.I0(ttmvc),
        .I1(PS[2]),
        .I2(PS[1]),
        .I3(PS[3]),
        .I4(PS[0]),
        .I5(allover));
  LUT6 #(
    .INIT(64'hFC00FA00FF0FFF00)) 
    NS_inferred__0_i_2
       (.I0(ttmvc),
        .I1(\PS[2]_i_2_n_0 ),
        .I2(PS[0]),
        .I3(PS[2]),
        .I4(PS[1]),
        .I5(PS[3]));
  LUT5 #(
    .INIT(32'hF3803F0C)) 
    NS_inferred__0_i_3
       (.I0(uartRdy),
        .I1(PS[0]),
        .I2(PS[3]),
        .I3(PS[1]),
        .I4(PS[2]));
  LUT6 #(
    .INIT(64'hAAFEFFEEFFAAAAAA)) 
    NS_inferred__0_i_4
       (.I0(NS_inferred__0_i_6_n_0),
        .I1(PS[0]),
        .I2(uartdone),
        .I3(PS[2]),
        .I4(PS[1]),
        .I5(PS[3]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    NS_inferred__0_i_5
       (.I0(\jr[5]_i_4_n_0 ),
        .I1(chalw[1]),
        .I2(chalw[0]),
        .I3(chalw[3]),
        .I4(chalw[2]),
        .I5(\PS[3]_i_4_n_0 ),
        .O(allover));
  LUT6 #(
    .INIT(64'hF010FF10F010F010)) 
    NS_inferred__0_i_6
       (.I0(jr_reg__0[5]),
        .I1(\PS[0]_i_4_n_0 ),
        .I2(NS_inferred__0_i_7_n_0),
        .I3(PS[0]),
        .I4(pufcou),
        .I5(NS_inferred__0_i_8_n_0),
        .O(NS_inferred__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    NS_inferred__0_i_7
       (.I0(PS[3]),
        .I1(PS[1]),
        .I2(PS[2]),
        .O(NS_inferred__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    NS_inferred__0_i_8
       (.I0(PS[3]),
        .I1(PS[1]),
        .I2(PS[2]),
        .O(NS_inferred__0_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \PS[0]_i_1 
       (.I0(\PS[0]_i_2_n_0 ),
        .I1(\PS[0]_i_3_n_0 ),
        .O(NS6_out[0]));
  LUT6 #(
    .INIT(64'h00AAFF00FF303030)) 
    \PS[0]_i_2 
       (.I0(uartdone),
        .I1(pufcou),
        .I2(PS[0]),
        .I3(PS[2]),
        .I4(PS[3]),
        .I5(PS[1]),
        .O(\PS[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A000A0A0A000B)) 
    \PS[0]_i_3 
       (.I0(PS[0]),
        .I1(\PS[0]_i_4_n_0 ),
        .I2(PS[2]),
        .I3(PS[1]),
        .I4(PS[3]),
        .I5(jr_reg__0[5]),
        .O(\PS[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \PS[0]_i_4 
       (.I0(jr_reg__0[3]),
        .I1(jr_reg__0[1]),
        .I2(jr_reg__0[0]),
        .I3(jr_reg__0[2]),
        .I4(jr_reg__0[4]),
        .O(\PS[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF83030FC)) 
    \PS[1]_i_1 
       (.I0(uartRdy),
        .I1(PS[0]),
        .I2(PS[1]),
        .I3(PS[2]),
        .I4(PS[3]),
        .O(NS6_out[1]));
  LUT6 #(
    .INIT(64'hF0F0D5F0F0F0D550)) 
    \PS[2]_i_1 
       (.I0(PS[3]),
        .I1(\PS[2]_i_2_n_0 ),
        .I2(PS[2]),
        .I3(PS[1]),
        .I4(PS[0]),
        .I5(ttmvc),
        .O(NS6_out[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \PS[2]_i_2 
       (.I0(jr_reg__0[4]),
        .I1(jr_reg__0[5]),
        .I2(jr_reg__0[3]),
        .I3(jr_reg__0[2]),
        .I4(jr_reg__0[1]),
        .I5(jr_reg__0[0]),
        .O(\PS[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC948)) 
    \PS[3]_i_1 
       (.I0(PS[0]),
        .I1(PS[3]),
        .I2(PS[1]),
        .I3(PS[2]),
        .I4(\PS[3]_i_2_n_0 ),
        .O(NS6_out[3]));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \PS[3]_i_2 
       (.I0(ttmvc),
        .I1(PS[2]),
        .I2(PS[3]),
        .I3(\PS[3]_i_3_n_0 ),
        .I4(\jr[5]_i_4_n_0 ),
        .I5(\PS[3]_i_4_n_0 ),
        .O(\PS[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \PS[3]_i_3 
       (.I0(chalw[0]),
        .I1(chalw[1]),
        .I2(PS[1]),
        .I3(PS[3]),
        .I4(chalw[3]),
        .I5(chalw[2]),
        .O(\PS[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \PS[3]_i_4 
       (.I0(chalw[6]),
        .I1(chalw[7]),
        .I2(chalw[4]),
        .I3(chalw[5]),
        .I4(chalw[9]),
        .I5(chalw[8]),
        .O(\PS[3]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "S0:0000,S1:0001,S2:0011,S3:0010,S4:0110,S5:0111,S6:0101,S7:0100,S8:1100,S9:1101,S10:1111,S11:1110,S12:1010,S13:1011,S14:1001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \PS_reg[0] 
       (.C(sysclk),
        .CE(\<const1> ),
        .D(NS6_out[0]),
        .Q(PS[0]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "S0:0000,S1:0001,S2:0011,S3:0010,S4:0110,S5:0111,S6:0101,S7:0100,S8:1100,S9:1101,S10:1111,S11:1110,S12:1010,S13:1011,S14:1001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \PS_reg[1] 
       (.C(sysclk),
        .CE(\<const1> ),
        .D(NS6_out[1]),
        .Q(PS[1]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "S0:0000,S1:0001,S2:0011,S3:0010,S4:0110,S5:0111,S6:0101,S7:0100,S8:1100,S9:1101,S10:1111,S11:1110,S12:1010,S13:1011,S14:1001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \PS_reg[2] 
       (.C(sysclk),
        .CE(\<const1> ),
        .D(NS6_out[2]),
        .Q(PS[2]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "S0:0000,S1:0001,S2:0011,S3:0010,S4:0110,S5:0111,S6:0101,S7:0100,S8:1100,S9:1101,S10:1111,S11:1110,S12:1010,S13:1011,S14:1001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \PS_reg[3] 
       (.C(sysclk),
        .CE(\<const1> ),
        .D(NS6_out[3]),
        .Q(PS[3]),
        .R(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  VCC VCC_3
       (.P(ONE));
  (* DONT_TOUCH *) 
  (* cwidth = "16" *) 
  d5FirstXilArbiter arbpuf
       (.chalin(chalin),
        .clk(pufclk),
        .en(pufen),
        .resp(resp),
        .rst(pufrst),
        .ten(ten));
  LUT4 #(
    .INIT(16'hBBAB)) 
    arbpuf_i_1
       (.I0(PS[3]),
        .I1(PS[2]),
        .I2(PS[1]),
        .I3(PS[0]),
        .O(pufrst));
  LUT3 #(
    .INIT(8'h02)) 
    \chalin[15]_i_1 
       (.I0(PS[1]),
        .I1(PS[0]),
        .I2(PS[3]),
        .O(chalin_reg0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalin_reg[0] 
       (.C(sysclk),
        .CE(chalin_reg0),
        .D(chalw[0]),
        .Q(chalin[0]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalin_reg[10] 
       (.C(sysclk),
        .CE(chalin_reg0),
        .D(chalw[10]),
        .Q(chalin[10]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalin_reg[11] 
       (.C(sysclk),
        .CE(chalin_reg0),
        .D(chalw[11]),
        .Q(chalin[11]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalin_reg[12] 
       (.C(sysclk),
        .CE(chalin_reg0),
        .D(chalw[12]),
        .Q(chalin[12]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalin_reg[13] 
       (.C(sysclk),
        .CE(chalin_reg0),
        .D(chalw[13]),
        .Q(chalin[13]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalin_reg[14] 
       (.C(sysclk),
        .CE(chalin_reg0),
        .D(chalw[14]),
        .Q(chalin[14]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalin_reg[15] 
       (.C(sysclk),
        .CE(chalin_reg0),
        .D(chalw[15]),
        .Q(chalin[15]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalin_reg[1] 
       (.C(sysclk),
        .CE(chalin_reg0),
        .D(chalw[1]),
        .Q(chalin[1]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalin_reg[2] 
       (.C(sysclk),
        .CE(chalin_reg0),
        .D(chalw[2]),
        .Q(chalin[2]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalin_reg[3] 
       (.C(sysclk),
        .CE(chalin_reg0),
        .D(chalw[3]),
        .Q(chalin[3]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalin_reg[4] 
       (.C(sysclk),
        .CE(chalin_reg0),
        .D(chalw[4]),
        .Q(chalin[4]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalin_reg[5] 
       (.C(sysclk),
        .CE(chalin_reg0),
        .D(chalw[5]),
        .Q(chalin[5]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalin_reg[6] 
       (.C(sysclk),
        .CE(chalin_reg0),
        .D(chalw[6]),
        .Q(chalin[6]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalin_reg[7] 
       (.C(sysclk),
        .CE(chalin_reg0),
        .D(chalw[7]),
        .Q(chalin[7]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalin_reg[8] 
       (.C(sysclk),
        .CE(chalin_reg0),
        .D(chalw[8]),
        .Q(chalin[8]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalin_reg[9] 
       (.C(sysclk),
        .CE(chalin_reg0),
        .D(chalw[9]),
        .Q(chalin[9]),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \chalw[0]_i_1 
       (.I0(chalw[0]),
        .O(p_2_in[0]));
  LUT4 #(
    .INIT(16'h0001)) 
    \chalw[15]_i_1 
       (.I0(PS[2]),
        .I1(PS[1]),
        .I2(PS[3]),
        .I3(PS[0]),
        .O(\chalw[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \chalw[15]_i_2 
       (.I0(PS[3]),
        .I1(PS[1]),
        .I2(PS[2]),
        .I3(PS[0]),
        .O(\chalw[15]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalw_reg[0] 
       (.C(sysclk),
        .CE(\chalw[15]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(chalw[0]),
        .R(\chalw[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalw_reg[10] 
       (.C(sysclk),
        .CE(\chalw[15]_i_2_n_0 ),
        .D(p_2_in[10]),
        .Q(chalw[10]),
        .R(\chalw[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalw_reg[11] 
       (.C(sysclk),
        .CE(\chalw[15]_i_2_n_0 ),
        .D(p_2_in[11]),
        .Q(chalw[11]),
        .R(\chalw[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalw_reg[12] 
       (.C(sysclk),
        .CE(\chalw[15]_i_2_n_0 ),
        .D(p_2_in[12]),
        .Q(chalw[12]),
        .R(\chalw[15]_i_1_n_0 ));
  CARRY4 \chalw_reg[12]_i_1 
       (.CI(\chalw_reg[8]_i_1_n_0 ),
        .CO({\chalw_reg[12]_i_1_n_0 ,\NLW_chalw_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_2_in[12:9]),
        .S(chalw[12:9]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalw_reg[13] 
       (.C(sysclk),
        .CE(\chalw[15]_i_2_n_0 ),
        .D(p_2_in[13]),
        .Q(chalw[13]),
        .R(\chalw[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalw_reg[14] 
       (.C(sysclk),
        .CE(\chalw[15]_i_2_n_0 ),
        .D(p_2_in[14]),
        .Q(chalw[14]),
        .R(\chalw[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalw_reg[15] 
       (.C(sysclk),
        .CE(\chalw[15]_i_2_n_0 ),
        .D(p_2_in[15]),
        .Q(chalw[15]),
        .R(\chalw[15]_i_1_n_0 ));
  CARRY4 \chalw_reg[15]_i_3 
       (.CI(\chalw_reg[12]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_2_in[15:13]),
        .S({\<const0> ,chalw[15:13]}));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalw_reg[1] 
       (.C(sysclk),
        .CE(\chalw[15]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(chalw[1]),
        .R(\chalw[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalw_reg[2] 
       (.C(sysclk),
        .CE(\chalw[15]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(chalw[2]),
        .R(\chalw[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalw_reg[3] 
       (.C(sysclk),
        .CE(\chalw[15]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(chalw[3]),
        .R(\chalw[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalw_reg[4] 
       (.C(sysclk),
        .CE(\chalw[15]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(chalw[4]),
        .R(\chalw[15]_i_1_n_0 ));
  CARRY4 \chalw_reg[4]_i_1 
       (.CI(\<const0> ),
        .CO({\chalw_reg[4]_i_1_n_0 ,\NLW_chalw_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(chalw[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_2_in[4:1]),
        .S(chalw[4:1]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalw_reg[5] 
       (.C(sysclk),
        .CE(\chalw[15]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(chalw[5]),
        .R(\chalw[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalw_reg[6] 
       (.C(sysclk),
        .CE(\chalw[15]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(chalw[6]),
        .R(\chalw[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalw_reg[7] 
       (.C(sysclk),
        .CE(\chalw[15]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(chalw[7]),
        .R(\chalw[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalw_reg[8] 
       (.C(sysclk),
        .CE(\chalw[15]_i_2_n_0 ),
        .D(p_2_in[8]),
        .Q(chalw[8]),
        .R(\chalw[15]_i_1_n_0 ));
  CARRY4 \chalw_reg[8]_i_1 
       (.CI(\chalw_reg[4]_i_1_n_0 ),
        .CO({\chalw_reg[8]_i_1_n_0 ,\NLW_chalw_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(p_2_in[8:5]),
        .S(chalw[8:5]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \chalw_reg[9] 
       (.C(sysclk),
        .CE(\chalw[15]_i_2_n_0 ),
        .D(p_2_in[9]),
        .Q(chalw[9]),
        .R(\chalw[15]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkbuffer
       (.I(CLK_IBUF),
        .O(sysclk));
  LUT1 #(
    .INIT(2'h1)) 
    \jr[0]_i_1 
       (.I0(jr_reg__0[0]),
        .O(p_0_in__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \jr[1]_i_1 
       (.I0(jr_reg__0[0]),
        .I1(jr_reg__0[1]),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \jr[2]_i_1 
       (.I0(jr_reg__0[1]),
        .I1(jr_reg__0[0]),
        .I2(jr_reg__0[2]),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \jr[3]_i_1 
       (.I0(jr_reg__0[2]),
        .I1(jr_reg__0[0]),
        .I2(jr_reg__0[1]),
        .I3(jr_reg__0[3]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \jr[4]_i_1 
       (.I0(jr_reg__0[3]),
        .I1(jr_reg__0[1]),
        .I2(jr_reg__0[0]),
        .I3(jr_reg__0[2]),
        .I4(jr_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'hFFFF000200020002)) 
    \jr[5]_i_1 
       (.I0(PS[0]),
        .I1(PS[3]),
        .I2(PS[1]),
        .I3(PS[2]),
        .I4(\jr[5]_i_4_n_0 ),
        .I5(\jr[5]_i_5_n_0 ),
        .O(\jr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4001)) 
    \jr[5]_i_2 
       (.I0(PS[0]),
        .I1(PS[3]),
        .I2(PS[1]),
        .I3(PS[2]),
        .O(jr0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \jr[5]_i_3 
       (.I0(jr_reg__0[4]),
        .I1(jr_reg__0[2]),
        .I2(jr_reg__0[0]),
        .I3(jr_reg__0[1]),
        .I4(jr_reg__0[3]),
        .I5(jr_reg__0[5]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \jr[5]_i_4 
       (.I0(chalw[12]),
        .I1(chalw[13]),
        .I2(chalw[10]),
        .I3(chalw[11]),
        .I4(chalw[15]),
        .I5(chalw[14]),
        .O(\jr[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4003000000000000)) 
    \jr[5]_i_5 
       (.I0(PS[0]),
        .I1(PS[2]),
        .I2(PS[1]),
        .I3(PS[3]),
        .I4(\jr[5]_i_6_n_0 ),
        .I5(\PS[3]_i_4_n_0 ),
        .O(\jr[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \jr[5]_i_6 
       (.I0(chalw[1]),
        .I1(chalw[0]),
        .I2(chalw[3]),
        .I3(chalw[2]),
        .O(\jr[5]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \jr_reg[0] 
       (.C(sysclk),
        .CE(jr0),
        .D(p_0_in__0[0]),
        .Q(jr_reg__0[0]),
        .R(\jr[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \jr_reg[1] 
       (.C(sysclk),
        .CE(jr0),
        .D(p_0_in__0[1]),
        .Q(jr_reg__0[1]),
        .R(\jr[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \jr_reg[2] 
       (.C(sysclk),
        .CE(jr0),
        .D(p_0_in__0[2]),
        .Q(jr_reg__0[2]),
        .R(\jr[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \jr_reg[3] 
       (.C(sysclk),
        .CE(jr0),
        .D(p_0_in__0[3]),
        .Q(jr_reg__0[3]),
        .R(\jr[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \jr_reg[4] 
       (.C(sysclk),
        .CE(jr0),
        .D(p_0_in__0[4]),
        .Q(jr_reg__0[4]),
        .R(\jr[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \jr_reg[5] 
       (.C(sysclk),
        .CE(jr0),
        .D(p_0_in__0[5]),
        .Q(jr_reg__0[5]),
        .R(\jr[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    lfsrclken_inferred_i_1
       (.I0(PS[3]),
        .I1(PS[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* XILINX_LEGACY_PRIM = "BUFGCE" *) 
  (* XILINX_TRANSFORM_PINMAP = "CE:CE0 I:I0" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE")) 
    pufbuf
       (.CE0(\<const1> ),
        .CE1(GND_2),
        .I0(CLK_IBUF),
        .I1(VCC_2),
        .IGNORE0(GND_2),
        .IGNORE1(VCC_2),
        .O(pufclk),
        .S0(VCC_2),
        .S1(GND_2));
  LUT4 #(
    .INIT(16'h0100)) 
    pufcou_i_1
       (.I0(PS[2]),
        .I1(PS[1]),
        .I2(PS[3]),
        .I3(PS[0]),
        .O(pufcou_i_1_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    pufcou_i_2
       (.I0(PS[2]),
        .I1(PS[1]),
        .I2(PS[3]),
        .I3(PS[0]),
        .O(pufcou_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pufcou_i_3
       (.I0(pufcou),
        .O(pufcou_i_3_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    pufcou_reg
       (.C(sysclk),
        .CE(pufcou_i_2_n_0),
        .D(pufcou_i_3_n_0),
        .Q(pufcou),
        .R(pufcou_i_1_n_0));
  LUT4 #(
    .INIT(16'h008C)) 
    pufen_inferred_i_1
       (.I0(PS[0]),
        .I1(PS[2]),
        .I2(PS[1]),
        .I3(PS[3]),
        .O(pufen));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[0] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(rddata[0]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[10] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(rtempw[6]),
        .Q(rddata[10]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[11] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(rtempw[7]),
        .Q(rddata[11]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[1] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(rddata[1]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[28] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(rddata[28]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[30] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(rddata[30]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[32] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(rddata[32]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[33] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(rddata[33]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[34] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(rddata[34]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[35] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(rddata[35]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[36] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(rddata[36]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[38] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(rddata[38]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[40] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(rddata[40]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[41] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(rddata[41]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[42] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(rddata[42]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[43] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(rddata[43]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[44] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(rddata[44]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[45] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const0> ),
        .Q(rddata[45]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[48] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[0]),
        .Q(rddata[48]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[49] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[1]),
        .Q(rddata[49]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[4] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(rtempw[0]),
        .Q(rddata[4]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[50] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[2]),
        .Q(rddata[50]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[51] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[3]),
        .Q(rddata[51]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[52] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[4]),
        .Q(rddata[52]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[53] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[5]),
        .Q(rddata[53]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[54] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[6]),
        .Q(rddata[54]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[55] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[7]),
        .Q(rddata[55]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[56] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[8]),
        .Q(rddata[56]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[57] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[9]),
        .Q(rddata[57]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[58] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[10]),
        .Q(rddata[58]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[59] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[11]),
        .Q(rddata[59]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[5] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(rtempw[1]),
        .Q(rddata[5]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[60] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[12]),
        .Q(rddata[60]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[61] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[13]),
        .Q(rddata[61]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[62] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[14]),
        .Q(rddata[62]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[63] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[15]),
        .Q(rddata[63]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[6] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(rtempw[2]),
        .Q(rddata[6]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[7] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(rtempw[3]),
        .Q(rddata[7]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[8] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(rtempw[4]),
        .Q(rddata[8]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rddata_reg[9] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(rtempw[5]),
        .Q(rddata[9]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \rtempw[0]_i_1 
       (.I0(rtempw[0]),
        .I1(tmvc[2]),
        .I2(tmvc[0]),
        .I3(tmvc[1]),
        .I4(resp),
        .O(\rtempw[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    \rtempw[1]_i_1 
       (.I0(rtempw[1]),
        .I1(tmvc[2]),
        .I2(tmvc[0]),
        .I3(tmvc[1]),
        .I4(resp),
        .O(\rtempw[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    \rtempw[2]_i_1 
       (.I0(rtempw[2]),
        .I1(tmvc[2]),
        .I2(tmvc[1]),
        .I3(tmvc[0]),
        .I4(resp),
        .O(\rtempw[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAAA8AAA)) 
    \rtempw[3]_i_1 
       (.I0(rtempw[3]),
        .I1(tmvc[2]),
        .I2(tmvc[0]),
        .I3(tmvc[1]),
        .I4(resp),
        .O(\rtempw[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \rtempw[4]_i_1 
       (.I0(rtempw[4]),
        .I1(tmvc[2]),
        .I2(tmvc[0]),
        .I3(tmvc[1]),
        .I4(resp),
        .O(\rtempw[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \rtempw[5]_i_1 
       (.I0(rtempw[5]),
        .I1(tmvc[2]),
        .I2(tmvc[0]),
        .I3(tmvc[1]),
        .I4(resp),
        .O(\rtempw[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \rtempw[6]_i_1 
       (.I0(rtempw[6]),
        .I1(tmvc[2]),
        .I2(tmvc[1]),
        .I3(tmvc[0]),
        .I4(resp),
        .O(\rtempw[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \rtempw[7]_i_1 
       (.I0(rtempw[7]),
        .I1(tmvc[2]),
        .I2(tmvc[0]),
        .I3(tmvc[1]),
        .I4(resp),
        .O(\rtempw[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rtempw_reg[0] 
       (.C(sysclk),
        .CE(ten),
        .D(\rtempw[0]_i_1_n_0 ),
        .Q(rtempw[0]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rtempw_reg[1] 
       (.C(sysclk),
        .CE(ten),
        .D(\rtempw[1]_i_1_n_0 ),
        .Q(rtempw[1]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rtempw_reg[2] 
       (.C(sysclk),
        .CE(ten),
        .D(\rtempw[2]_i_1_n_0 ),
        .Q(rtempw[2]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rtempw_reg[3] 
       (.C(sysclk),
        .CE(ten),
        .D(\rtempw[3]_i_1_n_0 ),
        .Q(rtempw[3]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rtempw_reg[4] 
       (.C(sysclk),
        .CE(ten),
        .D(\rtempw[4]_i_1_n_0 ),
        .Q(rtempw[4]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rtempw_reg[5] 
       (.C(sysclk),
        .CE(ten),
        .D(\rtempw[5]_i_1_n_0 ),
        .Q(rtempw[5]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rtempw_reg[6] 
       (.C(sysclk),
        .CE(ten),
        .D(\rtempw[6]_i_1_n_0 ),
        .Q(rtempw[6]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rtempw_reg[7] 
       (.C(sysclk),
        .CE(ten),
        .D(\rtempw[7]_i_1_n_0 ),
        .Q(rtempw[7]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[0] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(tempw[0]),
        .Q(tempw[0]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[10] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(tempw[10]),
        .Q(tempw[10]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[11] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(tempw[11]),
        .Q(tempw[11]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[12] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[13] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[14] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[15] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[16] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[17] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[18] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[19] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[1] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(tempw[1]),
        .Q(tempw[1]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[20] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[21] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[22] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[23] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[24] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[25] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[26] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[27] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[29] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[2] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(tempw[2]),
        .Q(tempw[2]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[31] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[37] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[39] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[3] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(tempw[3]),
        .Q(tempw[3]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[46] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[47] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(\<const1> ),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[48] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[0]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[49] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[1]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[4] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(tempw[4]),
        .Q(tempw[4]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[50] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[2]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[51] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[3]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[52] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[4]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[53] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[5]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[54] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[6]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[55] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[7]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[56] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[8]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[57] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[9]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[58] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[10]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[59] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[11]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[5] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(tempw[5]),
        .Q(tempw[5]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[60] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[12]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[61] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[13]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[62] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[14]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[63] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(chalw[15]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[6] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(tempw[6]),
        .Q(tempw[6]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[7] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(tempw[7]),
        .Q(tempw[7]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[8] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(tempw[8]),
        .Q(tempw[8]),
        .R(\<const0> ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tempw_reg[9] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_1_n_0 ),
        .D(tempw[9]),
        .Q(tempw[9]),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h0002)) 
    ten_inferred_i_1
       (.I0(PS[2]),
        .I1(PS[1]),
        .I2(PS[3]),
        .I3(PS[0]),
        .O(ten));
  LUT1 #(
    .INIT(2'h1)) 
    \tmvc[0]_i_1 
       (.I0(tmvc[0]),
        .O(p_3_in__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmvc[1]_i_1 
       (.I0(tmvc[0]),
        .I1(tmvc[1]),
        .O(p_3_in__0[1]));
  LUT4 #(
    .INIT(16'h0800)) 
    \tmvc[2]_i_1 
       (.I0(PS[2]),
        .I1(PS[3]),
        .I2(PS[1]),
        .I3(PS[0]),
        .O(\tmvc[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \tmvc[2]_i_2 
       (.I0(PS[2]),
        .I1(PS[3]),
        .I2(PS[1]),
        .I3(PS[0]),
        .O(\tmvc[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \tmvc[2]_i_3 
       (.I0(tmvc[0]),
        .I1(tmvc[1]),
        .I2(tmvc[2]),
        .O(\tmvc[2]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmvc_reg[0] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_2_n_0 ),
        .D(p_3_in__0[0]),
        .Q(tmvc[0]),
        .R(\tmvc[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmvc_reg[1] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_2_n_0 ),
        .D(p_3_in__0[1]),
        .Q(tmvc[1]),
        .R(\tmvc[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tmvc_reg[2] 
       (.C(sysclk),
        .CE(\tmvc[2]_i_2_n_0 ),
        .D(\tmvc[2]_i_3_n_0 ),
        .Q(tmvc[2]),
        .R(\tmvc[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    ttmvc_inferred_i_1
       (.I0(tmvc[0]),
        .I1(tmvc[2]),
        .I2(tmvc[1]),
        .O(ttmvc));
  OBUF txd_OBUF_inst
       (.I(txd_OBUF),
        .O(txd));
  (* DONT_TOUCH *) 
  (* LD_BTN_STR = "3'b110" *) 
  (* LD_INIT_STR = "3'b001" *) 
  (* RDY_LOW = "3'b011" *) 
  (* RST_REG = "3'b000" *) 
  (* SEND_CHAR = "3'b010" *) 
  (* WAIT_BTN = "3'b101" *) 
  (* WAIT_RDY = "3'b100" *) 
  uartmod uart64
       (.gosen(gosen),
        .rddata({rddata[63:48],ONE,ONE,rddata[45:40],ONE,rddata[38],ONE,rddata[36:32],ONE,rddata[30],ONE,rddata[28],ONE,ONE,ONE,ONE,ONE,ONE,ONE,ONE,ONE,ONE,ONE,ONE,ONE,ONE,ONE,ONE,rddata[11:4],ONE,ONE,rddata[1:0]}),
        .txd(txd_OBUF),
        .uartRdy(uartRdy),
        .uartclk(uartclk),
        .uartdone(uartdone));
  LUT4 #(
    .INIT(16'h8000)) 
    uart64_i_1
       (.I0(PS[3]),
        .I1(PS[1]),
        .I2(PS[2]),
        .I3(PS[0]),
        .O(gosen));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* XILINX_LEGACY_PRIM = "BUFGCE" *) 
  (* XILINX_TRANSFORM_PINMAP = "CE:CE0 I:I0" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE")) 
    uartbuf
       (.CE0(\<const1> ),
        .CE1(GND_2),
        .I0(CLK_IBUF),
        .I1(VCC_2),
        .IGNORE0(GND_2),
        .IGNORE1(VCC_2),
        .O(uartclk),
        .S0(VCC_2),
        .S1(GND_2));
endmodule

(* cwidth = "16" *) 
module dddFirstXilArbiterBot
   (.trig(triga),
    chal,
    clr,
    resp);
  input [15:0]chal;
  input clr;
  output resp;
  input triga;

  wire \<const1> ;
  wire [15:0]chal;
  wire clr;
  (* RTL_KEEP = "true" *) wire [15:0]outwl;
  wire resp;
  (* RTL_KEEP = "true" *) wire triga;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \BotLine[0].muxer 
       (.I0(chal[1]),
        .I1(outwl[0]),
        .I2(outwl[0]),
        .O(outwl[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \BotLine[10].muxer 
       (.I0(chal[11]),
        .I1(outwl[10]),
        .I2(outwl[10]),
        .O(outwl[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \BotLine[11].muxer 
       (.I0(chal[12]),
        .I1(outwl[11]),
        .I2(outwl[11]),
        .O(outwl[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \BotLine[12].muxer 
       (.I0(chal[13]),
        .I1(outwl[12]),
        .I2(outwl[12]),
        .O(outwl[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \BotLine[13].muxer 
       (.I0(chal[14]),
        .I1(outwl[13]),
        .I2(outwl[13]),
        .O(outwl[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \BotLine[14].muxer 
       (.I0(chal[15]),
        .I1(outwl[14]),
        .I2(outwl[14]),
        .O(outwl[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \BotLine[1].muxer 
       (.I0(chal[2]),
        .I1(outwl[1]),
        .I2(outwl[1]),
        .O(outwl[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \BotLine[2].muxer 
       (.I0(chal[3]),
        .I1(outwl[2]),
        .I2(outwl[2]),
        .O(outwl[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \BotLine[3].muxer 
       (.I0(chal[4]),
        .I1(outwl[3]),
        .I2(outwl[3]),
        .O(outwl[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \BotLine[4].muxer 
       (.I0(chal[5]),
        .I1(outwl[4]),
        .I2(outwl[4]),
        .O(outwl[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \BotLine[5].muxer 
       (.I0(chal[6]),
        .I1(outwl[5]),
        .I2(outwl[5]),
        .O(outwl[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \BotLine[6].muxer 
       (.I0(chal[7]),
        .I1(outwl[6]),
        .I2(outwl[6]),
        .O(outwl[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \BotLine[7].muxer 
       (.I0(chal[8]),
        .I1(outwl[7]),
        .I2(outwl[7]),
        .O(outwl[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \BotLine[8].muxer 
       (.I0(chal[9]),
        .I1(outwl[8]),
        .I2(outwl[8]),
        .O(outwl[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \BotLine[9].muxer 
       (.I0(chal[10]),
        .I1(outwl[9]),
        .I2(outwl[9]),
        .O(outwl[10]));
  VCC VCC
       (.P(\<const1> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    dffl
       (.C(outwl[15]),
        .CE(\<const1> ),
        .CLR(clr),
        .D(\<const1> ),
        .Q(resp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    muxer0
       (.I0(chal[0]),
        .I1(triga),
        .I2(triga),
        .O(outwl[0]));
endmodule

(* cwidth = "16" *) 
module dddFirstXilArbiterTop
   (.trig(triga),
    chal,
    pre,
    resp);
  input [15:0]chal;
  input pre;
  output resp;
  input triga;

  wire \<const1> ;
  wire [15:0]chal;
  (* RTL_KEEP = "true" *) wire [15:0]outwl;
  wire pre;
  wire resp;
  (* RTL_KEEP = "true" *) wire triga;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \TopLine[0].muxer 
       (.I0(chal[1]),
        .I1(outwl[0]),
        .I2(outwl[0]),
        .O(outwl[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \TopLine[10].muxer 
       (.I0(chal[11]),
        .I1(outwl[10]),
        .I2(outwl[10]),
        .O(outwl[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \TopLine[11].muxer 
       (.I0(chal[12]),
        .I1(outwl[11]),
        .I2(outwl[11]),
        .O(outwl[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \TopLine[12].muxer 
       (.I0(chal[13]),
        .I1(outwl[12]),
        .I2(outwl[12]),
        .O(outwl[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \TopLine[13].muxer 
       (.I0(chal[14]),
        .I1(outwl[13]),
        .I2(outwl[13]),
        .O(outwl[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \TopLine[14].muxer 
       (.I0(chal[15]),
        .I1(outwl[14]),
        .I2(outwl[14]),
        .O(outwl[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \TopLine[1].muxer 
       (.I0(chal[2]),
        .I1(outwl[1]),
        .I2(outwl[1]),
        .O(outwl[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \TopLine[2].muxer 
       (.I0(chal[3]),
        .I1(outwl[2]),
        .I2(outwl[2]),
        .O(outwl[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \TopLine[3].muxer 
       (.I0(chal[4]),
        .I1(outwl[3]),
        .I2(outwl[3]),
        .O(outwl[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \TopLine[4].muxer 
       (.I0(chal[5]),
        .I1(outwl[4]),
        .I2(outwl[4]),
        .O(outwl[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \TopLine[5].muxer 
       (.I0(chal[6]),
        .I1(outwl[5]),
        .I2(outwl[5]),
        .O(outwl[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \TopLine[6].muxer 
       (.I0(chal[7]),
        .I1(outwl[6]),
        .I2(outwl[6]),
        .O(outwl[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \TopLine[7].muxer 
       (.I0(chal[8]),
        .I1(outwl[7]),
        .I2(outwl[7]),
        .O(outwl[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \TopLine[8].muxer 
       (.I0(chal[9]),
        .I1(outwl[8]),
        .I2(outwl[8]),
        .O(outwl[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \TopLine[9].muxer 
       (.I0(chal[10]),
        .I1(outwl[9]),
        .I2(outwl[9]),
        .O(outwl[10]));
  VCC VCC
       (.P(\<const1> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    dffl
       (.C(outwl[15]),
        .CE(\<const1> ),
        .CLR(pre),
        .D(\<const1> ),
        .Q(resp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT3 #(
    .INIT(8'hE4)) 
    muxer0
       (.I0(chal[0]),
        .I1(triga),
        .I2(triga),
        .O(outwl[0]));
endmodule

(* LD_BTN_STR = "3'b110" *) (* LD_INIT_STR = "3'b001" *) (* RDY_LOW = "3'b011" *) 
(* RST_REG = "3'b000" *) (* SEND_CHAR = "3'b010" *) (* WAIT_BTN = "3'b101" *) 
(* WAIT_RDY = "3'b100" *) 
module uartmod
   (txd,
    uartdone,
    uartRdy,
    uartclk,
    gosen,
    rddata);
  output txd;
  output uartdone;
  output uartRdy;
  input uartclk;
  input gosen;
  input [63:0]rddata;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_sequential_uartState[0]_i_1_n_0 ;
  wire \FSM_sequential_uartState[0]_i_2_n_0 ;
  wire \FSM_sequential_uartState[0]_i_3_n_0 ;
  wire \FSM_sequential_uartState[0]_i_4_n_0 ;
  wire \FSM_sequential_uartState[0]_i_5_n_0 ;
  wire \FSM_sequential_uartState[0]_i_6_n_0 ;
  wire \FSM_sequential_uartState[1]_i_1_n_0 ;
  wire \FSM_sequential_uartState[2]_i_1_n_0 ;
  wire \FSM_sequential_uartState[2]_i_2_n_0 ;
  wire \FSM_sequential_uartState[2]_i_3_n_0 ;
  wire gosen;
  wire [3:0]p_0_in;
  wire [63:0]rddata;
  wire \reset_cntr[0]_i_1_n_0 ;
  wire \reset_cntr[0]_i_3_n_0 ;
  wire [17:0]reset_cntr_reg;
  wire \reset_cntr_reg[0]_i_2_n_0 ;
  wire \reset_cntr_reg[0]_i_2_n_4 ;
  wire \reset_cntr_reg[0]_i_2_n_5 ;
  wire \reset_cntr_reg[0]_i_2_n_6 ;
  wire \reset_cntr_reg[0]_i_2_n_7 ;
  wire \reset_cntr_reg[12]_i_1_n_0 ;
  wire \reset_cntr_reg[12]_i_1_n_4 ;
  wire \reset_cntr_reg[12]_i_1_n_5 ;
  wire \reset_cntr_reg[12]_i_1_n_6 ;
  wire \reset_cntr_reg[12]_i_1_n_7 ;
  wire \reset_cntr_reg[16]_i_1_n_6 ;
  wire \reset_cntr_reg[16]_i_1_n_7 ;
  wire \reset_cntr_reg[4]_i_1_n_0 ;
  wire \reset_cntr_reg[4]_i_1_n_4 ;
  wire \reset_cntr_reg[4]_i_1_n_5 ;
  wire \reset_cntr_reg[4]_i_1_n_6 ;
  wire \reset_cntr_reg[4]_i_1_n_7 ;
  wire \reset_cntr_reg[8]_i_1_n_0 ;
  wire \reset_cntr_reg[8]_i_1_n_4 ;
  wire \reset_cntr_reg[8]_i_1_n_5 ;
  wire \reset_cntr_reg[8]_i_1_n_6 ;
  wire \reset_cntr_reg[8]_i_1_n_7 ;
  wire sendStr;
  wire [3:1]sendStr__0;
  wire [7:0]\sendStr_reg[0]__0 ;
  wire [7:0]\sendStr_reg[1]__0 ;
  wire [7:0]\sendStr_reg[2]__0 ;
  wire [7:0]\sendStr_reg[3]__0 ;
  wire [7:0]\sendStr_reg[4]__0 ;
  wire [7:0]\sendStr_reg[5]__0 ;
  wire [7:0]\sendStr_reg[6]__0 ;
  wire [7:0]\sendStr_reg[7]__0 ;
  wire strIndex;
  wire [3:0]strIndex_reg__0;
  wire txd;
  wire [7:0]uartData;
  wire \uartData[0]_i_2_n_0 ;
  wire \uartData[0]_i_3_n_0 ;
  wire \uartData[1]_i_2_n_0 ;
  wire \uartData[1]_i_3_n_0 ;
  wire \uartData[2]_i_2_n_0 ;
  wire \uartData[2]_i_3_n_0 ;
  wire \uartData[3]_i_2_n_0 ;
  wire \uartData[3]_i_3_n_0 ;
  wire \uartData[4]_i_2_n_0 ;
  wire \uartData[4]_i_3_n_0 ;
  wire \uartData[5]_i_2_n_0 ;
  wire \uartData[5]_i_3_n_0 ;
  wire \uartData[6]_i_2_n_0 ;
  wire \uartData[6]_i_3_n_0 ;
  wire \uartData[7]_i_1_n_0 ;
  wire \uartData[7]_i_3_n_0 ;
  wire \uartData[7]_i_4_n_0 ;
  wire \uartData[7]_i_5_n_0 ;
  wire \uartData_reg[0]_i_1_n_0 ;
  wire \uartData_reg[2]_i_1_n_0 ;
  wire \uartData_reg[4]_i_1_n_0 ;
  wire \uartData_reg[5]_i_1_n_0 ;
  wire \uartData_reg[6]_i_1_n_0 ;
  wire \uartData_reg[7]_i_2_n_0 ;
  wire uartRdy;
  wire uartSend;
  (* RTL_KEEP = "yes" *) wire [2:0]uartState;
  wire uartclk;
  wire uartdone;
  wire uartdone_i_1_n_0;
  wire [3:0]\NLW_reset_cntr_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_reset_cntr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_reset_cntr_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_reset_cntr_reg[8]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h0303CBC8)) 
    \FSM_sequential_uartState[0]_i_1 
       (.I0(\FSM_sequential_uartState[2]_i_3_n_0 ),
        .I1(uartState[2]),
        .I2(uartState[0]),
        .I3(\FSM_sequential_uartState[0]_i_2_n_0 ),
        .I4(uartState[1]),
        .O(\FSM_sequential_uartState[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_uartState[0]_i_2 
       (.I0(reset_cntr_reg[0]),
        .I1(reset_cntr_reg[5]),
        .I2(\FSM_sequential_uartState[0]_i_3_n_0 ),
        .I3(\FSM_sequential_uartState[0]_i_4_n_0 ),
        .I4(\FSM_sequential_uartState[0]_i_5_n_0 ),
        .I5(\FSM_sequential_uartState[0]_i_6_n_0 ),
        .O(\FSM_sequential_uartState[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_sequential_uartState[0]_i_3 
       (.I0(reset_cntr_reg[4]),
        .I1(reset_cntr_reg[7]),
        .I2(reset_cntr_reg[6]),
        .I3(reset_cntr_reg[16]),
        .O(\FSM_sequential_uartState[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_uartState[0]_i_4 
       (.I0(reset_cntr_reg[10]),
        .I1(reset_cntr_reg[8]),
        .I2(reset_cntr_reg[17]),
        .I3(reset_cntr_reg[11]),
        .O(\FSM_sequential_uartState[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_uartState[0]_i_5 
       (.I0(reset_cntr_reg[14]),
        .I1(reset_cntr_reg[15]),
        .I2(reset_cntr_reg[12]),
        .I3(reset_cntr_reg[13]),
        .O(\FSM_sequential_uartState[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_uartState[0]_i_6 
       (.I0(reset_cntr_reg[2]),
        .I1(reset_cntr_reg[1]),
        .I2(reset_cntr_reg[3]),
        .I3(reset_cntr_reg[9]),
        .O(\FSM_sequential_uartState[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0616)) 
    \FSM_sequential_uartState[1]_i_1 
       (.I0(uartState[0]),
        .I1(uartState[1]),
        .I2(uartState[2]),
        .I3(\FSM_sequential_uartState[2]_i_3_n_0 ),
        .O(\FSM_sequential_uartState[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \FSM_sequential_uartState[2]_i_1 
       (.I0(uartState[1]),
        .I1(uartState[0]),
        .I2(uartRdy),
        .I3(uartState[2]),
        .O(\FSM_sequential_uartState[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44206620)) 
    \FSM_sequential_uartState[2]_i_2 
       (.I0(uartState[2]),
        .I1(uartState[1]),
        .I2(\FSM_sequential_uartState[2]_i_3_n_0 ),
        .I3(uartState[0]),
        .I4(gosen),
        .O(\FSM_sequential_uartState[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \FSM_sequential_uartState[2]_i_3 
       (.I0(strIndex_reg__0[3]),
        .I1(strIndex_reg__0[0]),
        .I2(strIndex_reg__0[1]),
        .I3(strIndex_reg__0[2]),
        .O(\FSM_sequential_uartState[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "RDY_LOW:011,WAIT_RDY:100,RST_REG:000,SEND_CHAR:010,WAIT_BTN:101,LD_INIT_STR:001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_uartState_reg[0] 
       (.C(uartclk),
        .CE(\FSM_sequential_uartState[2]_i_1_n_0 ),
        .D(\FSM_sequential_uartState[0]_i_1_n_0 ),
        .Q(uartState[0]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "RDY_LOW:011,WAIT_RDY:100,RST_REG:000,SEND_CHAR:010,WAIT_BTN:101,LD_INIT_STR:001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_uartState_reg[1] 
       (.C(uartclk),
        .CE(\FSM_sequential_uartState[2]_i_1_n_0 ),
        .D(\FSM_sequential_uartState[1]_i_1_n_0 ),
        .Q(uartState[1]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "RDY_LOW:011,WAIT_RDY:100,RST_REG:000,SEND_CHAR:010,WAIT_BTN:101,LD_INIT_STR:001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_uartState_reg[2] 
       (.C(uartclk),
        .CE(\FSM_sequential_uartState[2]_i_1_n_0 ),
        .D(\FSM_sequential_uartState[2]_i_2_n_0 ),
        .Q(uartState[2]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reset_cntr[0]_i_1 
       (.I0(\FSM_sequential_uartState[0]_i_2_n_0 ),
        .I1(uartState[0]),
        .I2(uartState[2]),
        .I3(uartState[1]),
        .O(\reset_cntr[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \reset_cntr[0]_i_3 
       (.I0(reset_cntr_reg[0]),
        .O(\reset_cntr[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[0] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[0]_i_2_n_7 ),
        .Q(reset_cntr_reg[0]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  CARRY4 \reset_cntr_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\reset_cntr_reg[0]_i_2_n_0 ,\NLW_reset_cntr_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\reset_cntr_reg[0]_i_2_n_4 ,\reset_cntr_reg[0]_i_2_n_5 ,\reset_cntr_reg[0]_i_2_n_6 ,\reset_cntr_reg[0]_i_2_n_7 }),
        .S({reset_cntr_reg[3:1],\reset_cntr[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[10] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[8]_i_1_n_5 ),
        .Q(reset_cntr_reg[10]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[11] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[8]_i_1_n_4 ),
        .Q(reset_cntr_reg[11]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[12] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[12]_i_1_n_7 ),
        .Q(reset_cntr_reg[12]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  CARRY4 \reset_cntr_reg[12]_i_1 
       (.CI(\reset_cntr_reg[8]_i_1_n_0 ),
        .CO({\reset_cntr_reg[12]_i_1_n_0 ,\NLW_reset_cntr_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\reset_cntr_reg[12]_i_1_n_4 ,\reset_cntr_reg[12]_i_1_n_5 ,\reset_cntr_reg[12]_i_1_n_6 ,\reset_cntr_reg[12]_i_1_n_7 }),
        .S(reset_cntr_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[13] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[12]_i_1_n_6 ),
        .Q(reset_cntr_reg[13]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[14] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[12]_i_1_n_5 ),
        .Q(reset_cntr_reg[14]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[15] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[12]_i_1_n_4 ),
        .Q(reset_cntr_reg[15]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[16] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[16]_i_1_n_7 ),
        .Q(reset_cntr_reg[16]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  CARRY4 \reset_cntr_reg[16]_i_1 
       (.CI(\reset_cntr_reg[12]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\reset_cntr_reg[16]_i_1_n_6 ,\reset_cntr_reg[16]_i_1_n_7 }),
        .S({\<const0> ,\<const0> ,reset_cntr_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[17] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[16]_i_1_n_6 ),
        .Q(reset_cntr_reg[17]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[1] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[0]_i_2_n_6 ),
        .Q(reset_cntr_reg[1]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[2] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[0]_i_2_n_5 ),
        .Q(reset_cntr_reg[2]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[3] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[0]_i_2_n_4 ),
        .Q(reset_cntr_reg[3]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[4] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[4]_i_1_n_7 ),
        .Q(reset_cntr_reg[4]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  CARRY4 \reset_cntr_reg[4]_i_1 
       (.CI(\reset_cntr_reg[0]_i_2_n_0 ),
        .CO({\reset_cntr_reg[4]_i_1_n_0 ,\NLW_reset_cntr_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\reset_cntr_reg[4]_i_1_n_4 ,\reset_cntr_reg[4]_i_1_n_5 ,\reset_cntr_reg[4]_i_1_n_6 ,\reset_cntr_reg[4]_i_1_n_7 }),
        .S(reset_cntr_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[5] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[4]_i_1_n_6 ),
        .Q(reset_cntr_reg[5]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[6] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[4]_i_1_n_5 ),
        .Q(reset_cntr_reg[6]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[7] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[4]_i_1_n_4 ),
        .Q(reset_cntr_reg[7]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[8] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[8]_i_1_n_7 ),
        .Q(reset_cntr_reg[8]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  CARRY4 \reset_cntr_reg[8]_i_1 
       (.CI(\reset_cntr_reg[4]_i_1_n_0 ),
        .CO({\reset_cntr_reg[8]_i_1_n_0 ,\NLW_reset_cntr_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\reset_cntr_reg[8]_i_1_n_4 ,\reset_cntr_reg[8]_i_1_n_5 ,\reset_cntr_reg[8]_i_1_n_6 ,\reset_cntr_reg[8]_i_1_n_7 }),
        .S(reset_cntr_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cntr_reg[9] 
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\reset_cntr_reg[8]_i_1_n_6 ),
        .Q(reset_cntr_reg[9]),
        .R(\reset_cntr[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \sendStr[0][7]_i_1 
       (.I0(uartState[0]),
        .I1(uartState[2]),
        .I2(uartState[1]),
        .O(sendStr));
  FDRE \sendStr_reg[0][0] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[56]),
        .Q(\sendStr_reg[0]__0 [0]),
        .R(\<const0> ));
  FDRE \sendStr_reg[0][1] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[57]),
        .Q(\sendStr_reg[0]__0 [1]),
        .R(\<const0> ));
  FDRE \sendStr_reg[0][2] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[58]),
        .Q(\sendStr_reg[0]__0 [2]),
        .R(\<const0> ));
  FDRE \sendStr_reg[0][3] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[59]),
        .Q(\sendStr_reg[0]__0 [3]),
        .R(\<const0> ));
  FDRE \sendStr_reg[0][4] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[60]),
        .Q(\sendStr_reg[0]__0 [4]),
        .R(\<const0> ));
  FDRE \sendStr_reg[0][5] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[61]),
        .Q(\sendStr_reg[0]__0 [5]),
        .R(\<const0> ));
  FDRE \sendStr_reg[0][6] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[62]),
        .Q(\sendStr_reg[0]__0 [6]),
        .R(\<const0> ));
  FDRE \sendStr_reg[0][7] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[63]),
        .Q(\sendStr_reg[0]__0 [7]),
        .R(\<const0> ));
  FDRE \sendStr_reg[1][0] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[48]),
        .Q(\sendStr_reg[1]__0 [0]),
        .R(\<const0> ));
  FDRE \sendStr_reg[1][1] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[49]),
        .Q(\sendStr_reg[1]__0 [1]),
        .R(\<const0> ));
  FDRE \sendStr_reg[1][2] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[50]),
        .Q(\sendStr_reg[1]__0 [2]),
        .R(\<const0> ));
  FDRE \sendStr_reg[1][3] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[51]),
        .Q(\sendStr_reg[1]__0 [3]),
        .R(\<const0> ));
  FDRE \sendStr_reg[1][4] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[52]),
        .Q(\sendStr_reg[1]__0 [4]),
        .R(\<const0> ));
  FDRE \sendStr_reg[1][5] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[53]),
        .Q(\sendStr_reg[1]__0 [5]),
        .R(\<const0> ));
  FDRE \sendStr_reg[1][6] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[54]),
        .Q(\sendStr_reg[1]__0 [6]),
        .R(\<const0> ));
  FDRE \sendStr_reg[1][7] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[55]),
        .Q(\sendStr_reg[1]__0 [7]),
        .R(\<const0> ));
  FDRE \sendStr_reg[2][0] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[40]),
        .Q(\sendStr_reg[2]__0 [0]),
        .R(\<const0> ));
  FDRE \sendStr_reg[2][1] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[41]),
        .Q(\sendStr_reg[2]__0 [1]),
        .R(\<const0> ));
  FDRE \sendStr_reg[2][2] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[42]),
        .Q(\sendStr_reg[2]__0 [2]),
        .R(\<const0> ));
  FDRE \sendStr_reg[2][3] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[43]),
        .Q(\sendStr_reg[2]__0 [3]),
        .R(\<const0> ));
  FDRE \sendStr_reg[2][4] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[44]),
        .Q(\sendStr_reg[2]__0 [4]),
        .R(\<const0> ));
  FDRE \sendStr_reg[2][5] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[45]),
        .Q(\sendStr_reg[2]__0 [5]),
        .R(\<const0> ));
  FDRE \sendStr_reg[2][6] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[46]),
        .Q(\sendStr_reg[2]__0 [6]),
        .R(\<const0> ));
  FDRE \sendStr_reg[2][7] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[47]),
        .Q(\sendStr_reg[2]__0 [7]),
        .R(\<const0> ));
  FDRE \sendStr_reg[3][0] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[32]),
        .Q(\sendStr_reg[3]__0 [0]),
        .R(\<const0> ));
  FDRE \sendStr_reg[3][1] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[33]),
        .Q(\sendStr_reg[3]__0 [1]),
        .R(\<const0> ));
  FDRE \sendStr_reg[3][2] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[34]),
        .Q(\sendStr_reg[3]__0 [2]),
        .R(\<const0> ));
  FDRE \sendStr_reg[3][3] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[35]),
        .Q(\sendStr_reg[3]__0 [3]),
        .R(\<const0> ));
  FDRE \sendStr_reg[3][4] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[36]),
        .Q(\sendStr_reg[3]__0 [4]),
        .R(\<const0> ));
  FDRE \sendStr_reg[3][5] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[37]),
        .Q(\sendStr_reg[3]__0 [5]),
        .R(\<const0> ));
  FDRE \sendStr_reg[3][6] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[38]),
        .Q(\sendStr_reg[3]__0 [6]),
        .R(\<const0> ));
  FDRE \sendStr_reg[3][7] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[39]),
        .Q(\sendStr_reg[3]__0 [7]),
        .R(\<const0> ));
  FDRE \sendStr_reg[4][0] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[24]),
        .Q(\sendStr_reg[4]__0 [0]),
        .R(\<const0> ));
  FDRE \sendStr_reg[4][1] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[25]),
        .Q(\sendStr_reg[4]__0 [1]),
        .R(\<const0> ));
  FDRE \sendStr_reg[4][2] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[26]),
        .Q(\sendStr_reg[4]__0 [2]),
        .R(\<const0> ));
  FDRE \sendStr_reg[4][3] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[27]),
        .Q(\sendStr_reg[4]__0 [3]),
        .R(\<const0> ));
  FDRE \sendStr_reg[4][4] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[28]),
        .Q(\sendStr_reg[4]__0 [4]),
        .R(\<const0> ));
  FDRE \sendStr_reg[4][5] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[29]),
        .Q(\sendStr_reg[4]__0 [5]),
        .R(\<const0> ));
  FDRE \sendStr_reg[4][6] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[30]),
        .Q(\sendStr_reg[4]__0 [6]),
        .R(\<const0> ));
  FDRE \sendStr_reg[4][7] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[31]),
        .Q(\sendStr_reg[4]__0 [7]),
        .R(\<const0> ));
  FDRE \sendStr_reg[5][0] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[16]),
        .Q(\sendStr_reg[5]__0 [0]),
        .R(\<const0> ));
  FDRE \sendStr_reg[5][1] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[17]),
        .Q(\sendStr_reg[5]__0 [1]),
        .R(\<const0> ));
  FDRE \sendStr_reg[5][2] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[18]),
        .Q(\sendStr_reg[5]__0 [2]),
        .R(\<const0> ));
  FDRE \sendStr_reg[5][3] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[19]),
        .Q(\sendStr_reg[5]__0 [3]),
        .R(\<const0> ));
  FDRE \sendStr_reg[5][4] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[20]),
        .Q(\sendStr_reg[5]__0 [4]),
        .R(\<const0> ));
  FDRE \sendStr_reg[5][5] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[21]),
        .Q(\sendStr_reg[5]__0 [5]),
        .R(\<const0> ));
  FDRE \sendStr_reg[5][6] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[22]),
        .Q(\sendStr_reg[5]__0 [6]),
        .R(\<const0> ));
  FDRE \sendStr_reg[5][7] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[23]),
        .Q(\sendStr_reg[5]__0 [7]),
        .R(\<const0> ));
  FDRE \sendStr_reg[6][0] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[8]),
        .Q(\sendStr_reg[6]__0 [0]),
        .R(\<const0> ));
  FDRE \sendStr_reg[6][1] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[9]),
        .Q(\sendStr_reg[6]__0 [1]),
        .R(\<const0> ));
  FDRE \sendStr_reg[6][2] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[10]),
        .Q(\sendStr_reg[6]__0 [2]),
        .R(\<const0> ));
  FDRE \sendStr_reg[6][3] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[11]),
        .Q(\sendStr_reg[6]__0 [3]),
        .R(\<const0> ));
  FDRE \sendStr_reg[6][4] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[12]),
        .Q(\sendStr_reg[6]__0 [4]),
        .R(\<const0> ));
  FDRE \sendStr_reg[6][5] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[13]),
        .Q(\sendStr_reg[6]__0 [5]),
        .R(\<const0> ));
  FDRE \sendStr_reg[6][6] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[14]),
        .Q(\sendStr_reg[6]__0 [6]),
        .R(\<const0> ));
  FDRE \sendStr_reg[6][7] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[15]),
        .Q(\sendStr_reg[6]__0 [7]),
        .R(\<const0> ));
  FDRE \sendStr_reg[7][0] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[0]),
        .Q(\sendStr_reg[7]__0 [0]),
        .R(\<const0> ));
  FDRE \sendStr_reg[7][1] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[1]),
        .Q(\sendStr_reg[7]__0 [1]),
        .R(\<const0> ));
  FDRE \sendStr_reg[7][2] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[2]),
        .Q(\sendStr_reg[7]__0 [2]),
        .R(\<const0> ));
  FDRE \sendStr_reg[7][3] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[3]),
        .Q(\sendStr_reg[7]__0 [3]),
        .R(\<const0> ));
  FDRE \sendStr_reg[7][4] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[4]),
        .Q(\sendStr_reg[7]__0 [4]),
        .R(\<const0> ));
  FDRE \sendStr_reg[7][5] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[5]),
        .Q(\sendStr_reg[7]__0 [5]),
        .R(\<const0> ));
  FDRE \sendStr_reg[7][6] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[6]),
        .Q(\sendStr_reg[7]__0 [6]),
        .R(\<const0> ));
  FDRE \sendStr_reg[7][7] 
       (.C(uartclk),
        .CE(sendStr),
        .D(rddata[7]),
        .Q(\sendStr_reg[7]__0 [7]),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \strIndex[0]_i_1 
       (.I0(strIndex_reg__0[0]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \strIndex[1]_i_1 
       (.I0(strIndex_reg__0[0]),
        .I1(strIndex_reg__0[1]),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \strIndex[2]_i_1 
       (.I0(strIndex_reg__0[0]),
        .I1(strIndex_reg__0[1]),
        .I2(strIndex_reg__0[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \strIndex[3]_i_1 
       (.I0(strIndex_reg__0[1]),
        .I1(strIndex_reg__0[0]),
        .I2(strIndex_reg__0[2]),
        .I3(strIndex_reg__0[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \strIndex_reg[0] 
       (.C(uartclk),
        .CE(strIndex),
        .D(p_0_in[0]),
        .Q(strIndex_reg__0[0]),
        .R(sendStr));
  FDRE #(
    .INIT(1'b0)) 
    \strIndex_reg[1] 
       (.C(uartclk),
        .CE(strIndex),
        .D(p_0_in[1]),
        .Q(strIndex_reg__0[1]),
        .R(sendStr));
  FDRE #(
    .INIT(1'b0)) 
    \strIndex_reg[2] 
       (.C(uartclk),
        .CE(strIndex),
        .D(p_0_in[2]),
        .Q(strIndex_reg__0[2]),
        .R(sendStr));
  FDRE #(
    .INIT(1'b0)) 
    \strIndex_reg[3] 
       (.C(uartclk),
        .CE(strIndex),
        .D(p_0_in[3]),
        .Q(strIndex_reg__0[3]),
        .R(sendStr));
  UART_TXD transmit
       (.CLK(uartclk),
        .DATA(uartData),
        .READY(uartRdy),
        .SEND(uartSend),
        .UART_TX(txd));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \uartData[0]_i_2 
       (.I0(\sendStr_reg[3]__0 [0]),
        .I1(\sendStr_reg[2]__0 [0]),
        .I2(strIndex_reg__0[1]),
        .I3(\sendStr_reg[1]__0 [0]),
        .I4(strIndex_reg__0[0]),
        .I5(\sendStr_reg[0]__0 [0]),
        .O(\uartData[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \uartData[0]_i_3 
       (.I0(\sendStr_reg[7]__0 [0]),
        .I1(\sendStr_reg[6]__0 [0]),
        .I2(strIndex_reg__0[1]),
        .I3(\sendStr_reg[5]__0 [0]),
        .I4(strIndex_reg__0[0]),
        .I5(\sendStr_reg[4]__0 [0]),
        .O(\uartData[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFEF2)) 
    \uartData[1]_i_1 
       (.I0(\uartData[1]_i_2_n_0 ),
        .I1(strIndex_reg__0[2]),
        .I2(strIndex_reg__0[3]),
        .I3(\uartData[1]_i_3_n_0 ),
        .O(sendStr__0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \uartData[1]_i_2 
       (.I0(\sendStr_reg[3]__0 [1]),
        .I1(\sendStr_reg[2]__0 [1]),
        .I2(strIndex_reg__0[1]),
        .I3(\sendStr_reg[1]__0 [1]),
        .I4(strIndex_reg__0[0]),
        .I5(\sendStr_reg[0]__0 [1]),
        .O(\uartData[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \uartData[1]_i_3 
       (.I0(\sendStr_reg[7]__0 [1]),
        .I1(\sendStr_reg[6]__0 [1]),
        .I2(strIndex_reg__0[1]),
        .I3(\sendStr_reg[5]__0 [1]),
        .I4(strIndex_reg__0[0]),
        .I5(\sendStr_reg[4]__0 [1]),
        .O(\uartData[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \uartData[2]_i_2 
       (.I0(\sendStr_reg[3]__0 [2]),
        .I1(\sendStr_reg[2]__0 [2]),
        .I2(strIndex_reg__0[1]),
        .I3(\sendStr_reg[1]__0 [2]),
        .I4(strIndex_reg__0[0]),
        .I5(\sendStr_reg[0]__0 [2]),
        .O(\uartData[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \uartData[2]_i_3 
       (.I0(\sendStr_reg[7]__0 [2]),
        .I1(\sendStr_reg[6]__0 [2]),
        .I2(strIndex_reg__0[1]),
        .I3(\sendStr_reg[5]__0 [2]),
        .I4(strIndex_reg__0[0]),
        .I5(\sendStr_reg[4]__0 [2]),
        .O(\uartData[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFEF2)) 
    \uartData[3]_i_1 
       (.I0(\uartData[3]_i_2_n_0 ),
        .I1(strIndex_reg__0[2]),
        .I2(strIndex_reg__0[3]),
        .I3(\uartData[3]_i_3_n_0 ),
        .O(sendStr__0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \uartData[3]_i_2 
       (.I0(\sendStr_reg[3]__0 [3]),
        .I1(\sendStr_reg[2]__0 [3]),
        .I2(strIndex_reg__0[1]),
        .I3(\sendStr_reg[1]__0 [3]),
        .I4(strIndex_reg__0[0]),
        .I5(\sendStr_reg[0]__0 [3]),
        .O(\uartData[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \uartData[3]_i_3 
       (.I0(\sendStr_reg[7]__0 [3]),
        .I1(\sendStr_reg[6]__0 [3]),
        .I2(strIndex_reg__0[1]),
        .I3(\sendStr_reg[5]__0 [3]),
        .I4(strIndex_reg__0[0]),
        .I5(\sendStr_reg[4]__0 [3]),
        .O(\uartData[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \uartData[4]_i_2 
       (.I0(\sendStr_reg[3]__0 [4]),
        .I1(\sendStr_reg[2]__0 [4]),
        .I2(strIndex_reg__0[1]),
        .I3(\sendStr_reg[1]__0 [4]),
        .I4(strIndex_reg__0[0]),
        .I5(\sendStr_reg[0]__0 [4]),
        .O(\uartData[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \uartData[4]_i_3 
       (.I0(\sendStr_reg[7]__0 [4]),
        .I1(\sendStr_reg[6]__0 [4]),
        .I2(strIndex_reg__0[1]),
        .I3(\sendStr_reg[5]__0 [4]),
        .I4(strIndex_reg__0[0]),
        .I5(\sendStr_reg[4]__0 [4]),
        .O(\uartData[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \uartData[5]_i_2 
       (.I0(\sendStr_reg[3]__0 [5]),
        .I1(\sendStr_reg[2]__0 [5]),
        .I2(strIndex_reg__0[1]),
        .I3(\sendStr_reg[1]__0 [5]),
        .I4(strIndex_reg__0[0]),
        .I5(\sendStr_reg[0]__0 [5]),
        .O(\uartData[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \uartData[5]_i_3 
       (.I0(\sendStr_reg[7]__0 [5]),
        .I1(\sendStr_reg[6]__0 [5]),
        .I2(strIndex_reg__0[1]),
        .I3(\sendStr_reg[5]__0 [5]),
        .I4(strIndex_reg__0[0]),
        .I5(\sendStr_reg[4]__0 [5]),
        .O(\uartData[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \uartData[6]_i_2 
       (.I0(\sendStr_reg[3]__0 [6]),
        .I1(\sendStr_reg[2]__0 [6]),
        .I2(strIndex_reg__0[1]),
        .I3(\sendStr_reg[1]__0 [6]),
        .I4(strIndex_reg__0[0]),
        .I5(\sendStr_reg[0]__0 [6]),
        .O(\uartData[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \uartData[6]_i_3 
       (.I0(\sendStr_reg[7]__0 [6]),
        .I1(\sendStr_reg[6]__0 [6]),
        .I2(strIndex_reg__0[1]),
        .I3(\sendStr_reg[5]__0 [6]),
        .I4(strIndex_reg__0[0]),
        .I5(\sendStr_reg[4]__0 [6]),
        .O(\uartData[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \uartData[7]_i_1 
       (.I0(strIndex_reg__0[3]),
        .I1(uartState[0]),
        .I2(uartState[2]),
        .I3(uartState[1]),
        .O(\uartData[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \uartData[7]_i_3 
       (.I0(strIndex_reg__0[0]),
        .I1(strIndex_reg__0[3]),
        .I2(strIndex_reg__0[2]),
        .O(\uartData[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \uartData[7]_i_4 
       (.I0(\sendStr_reg[3]__0 [7]),
        .I1(\sendStr_reg[2]__0 [7]),
        .I2(strIndex_reg__0[1]),
        .I3(\sendStr_reg[1]__0 [7]),
        .I4(strIndex_reg__0[0]),
        .I5(\sendStr_reg[0]__0 [7]),
        .O(\uartData[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \uartData[7]_i_5 
       (.I0(\sendStr_reg[7]__0 [7]),
        .I1(\sendStr_reg[6]__0 [7]),
        .I2(strIndex_reg__0[1]),
        .I3(\sendStr_reg[5]__0 [7]),
        .I4(strIndex_reg__0[0]),
        .I5(\sendStr_reg[4]__0 [7]),
        .O(\uartData[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uartData_reg[0] 
       (.C(uartclk),
        .CE(strIndex),
        .D(\uartData_reg[0]_i_1_n_0 ),
        .Q(uartData[0]),
        .R(\uartData[7]_i_1_n_0 ));
  MUXF7 \uartData_reg[0]_i_1 
       (.I0(\uartData[0]_i_2_n_0 ),
        .I1(\uartData[0]_i_3_n_0 ),
        .O(\uartData_reg[0]_i_1_n_0 ),
        .S(\uartData[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uartData_reg[1] 
       (.C(uartclk),
        .CE(strIndex),
        .D(sendStr__0[1]),
        .Q(uartData[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \uartData_reg[2] 
       (.C(uartclk),
        .CE(strIndex),
        .D(\uartData_reg[2]_i_1_n_0 ),
        .Q(uartData[2]),
        .R(\uartData[7]_i_1_n_0 ));
  MUXF7 \uartData_reg[2]_i_1 
       (.I0(\uartData[2]_i_2_n_0 ),
        .I1(\uartData[2]_i_3_n_0 ),
        .O(\uartData_reg[2]_i_1_n_0 ),
        .S(\uartData[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uartData_reg[3] 
       (.C(uartclk),
        .CE(strIndex),
        .D(sendStr__0[3]),
        .Q(uartData[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \uartData_reg[4] 
       (.C(uartclk),
        .CE(strIndex),
        .D(\uartData_reg[4]_i_1_n_0 ),
        .Q(uartData[4]),
        .R(\uartData[7]_i_1_n_0 ));
  MUXF7 \uartData_reg[4]_i_1 
       (.I0(\uartData[4]_i_2_n_0 ),
        .I1(\uartData[4]_i_3_n_0 ),
        .O(\uartData_reg[4]_i_1_n_0 ),
        .S(\uartData[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uartData_reg[5] 
       (.C(uartclk),
        .CE(strIndex),
        .D(\uartData_reg[5]_i_1_n_0 ),
        .Q(uartData[5]),
        .R(\uartData[7]_i_1_n_0 ));
  MUXF7 \uartData_reg[5]_i_1 
       (.I0(\uartData[5]_i_2_n_0 ),
        .I1(\uartData[5]_i_3_n_0 ),
        .O(\uartData_reg[5]_i_1_n_0 ),
        .S(\uartData[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uartData_reg[6] 
       (.C(uartclk),
        .CE(strIndex),
        .D(\uartData_reg[6]_i_1_n_0 ),
        .Q(uartData[6]),
        .R(\uartData[7]_i_1_n_0 ));
  MUXF7 \uartData_reg[6]_i_1 
       (.I0(\uartData[6]_i_2_n_0 ),
        .I1(\uartData[6]_i_3_n_0 ),
        .O(\uartData_reg[6]_i_1_n_0 ),
        .S(\uartData[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \uartData_reg[7] 
       (.C(uartclk),
        .CE(strIndex),
        .D(\uartData_reg[7]_i_2_n_0 ),
        .Q(uartData[7]),
        .R(\uartData[7]_i_1_n_0 ));
  MUXF7 \uartData_reg[7]_i_2 
       (.I0(\uartData[7]_i_4_n_0 ),
        .I1(\uartData[7]_i_5_n_0 ),
        .O(\uartData_reg[7]_i_2_n_0 ),
        .S(\uartData[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    uartSend_i_1
       (.I0(uartState[1]),
        .I1(uartState[2]),
        .I2(uartState[0]),
        .O(strIndex));
  FDSE #(
    .INIT(1'b0)) 
    uartSend_reg
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(uartSend),
        .S(strIndex));
  LUT3 #(
    .INIT(8'h40)) 
    uartdone_i_1
       (.I0(uartState[1]),
        .I1(uartState[0]),
        .I2(uartState[2]),
        .O(uartdone_i_1_n_0));
  FDSE uartdone_reg
       (.C(uartclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(uartdone),
        .S(uartdone_i_1_n_0));
endmodule
