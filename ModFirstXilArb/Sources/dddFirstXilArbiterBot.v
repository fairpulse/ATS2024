`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT Kharagpur   
// Engineer: Venkata Sreekanth Balijabudda
// 
// Create Date: 04.03.2020 10:45:59
// Design Name: 
// Module Name: FirstXilArbiterBot
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dddFirstXilArbiterBot #(parameter cwidth = 64) (
input trig,
input [cwidth-1:0] chal,
input clr,
//input clk,
output resp
);


(*KEEP ="TRUE"*) wire [cwidth-1:0] outwl;
(*KEEP ="TRUE"*) wire [cwidth-1:0] outwla,outwlb;
(*KEEP ="TRUE"*) wire [cwidth-1:0] chalw;
//(*KEEP ="TRUE"*) wire clr=1'b0;

//(*DONT_TOUCH = "TRUE"*) wire triga, trigb;
(*KEEP ="TRUE"*) wire triga, trigb;
(*KEEP ="TRUE"*) wire Rb, Sb, Qb, Qbn;

(*KEEP ="TRUE"*) assign triga = trig;
(*KEEP ="TRUE"*) assign trigb = trig;
	//(*DONT_TOUCH = "TRUE"*) lut_input lutin(.in(chal[0]),.out(chalw[0]));
//(*DONT_TOUCH = "TRUE"*) (*LOCK_PINS = "I0:A3, I1:A1, I2:A6"*) LUT3 #(.INIT(8'hE4)) muxer0 (.O(outwl[0]),.I0(chal[0]),.I1(trigb),.I2(triga));
(*DONT_TOUCH = "TRUE"*) LUT3 #(.INIT(8'hE4)) muxer0 (.O(outwl[0]),.I0(chal[0]),.I1(trigb),.I2(triga));
	//(*DONT_TOUCH = "TRUE"*) lut_output lutou(.in(chal[0] ? trig : 1'b1),.out(outwl[0]));
 (*KEEP ="TRUE"*) assign outwla=outwl;
 (*KEEP ="TRUE"*) assign outwlb=outwl;
// (*KEEP ="TRUE"*) assign resp=outwl[cwidth-1];

generate
genvar i;

	for(i=0;i<cwidth-1;i=i+1) begin:BotLine
	//(*DONT_TOUCH = "TRUE"*) lut_input lutina(.in(chal[i+1]),.out(chalw[i+1]));
	////(*keep*) (*preserve*) assign outw[i+1]=chalw[i] ? outwl[i] : ~outwl[i];
	//(*DONT_TOUCH = "TRUE"*) (*LOCK_PINS = "I0:A3, I1:A1, I2:A6"*) LUT3 #(.INIT(8'hE4)) muxer (.O(outwl[i+1]),.I0(chal[i+1]),.I1(outwlb[i]),.I2(outwla[i]));
	(*DONT_TOUCH = "TRUE"*) LUT3 #(.INIT(8'hE4)) muxer (.O(outwl[i+1]),.I0(chal[i+1]),.I1(outwlb[i]),.I2(outwla[i]));
	//(*DONT_TOUCH = "TRUE"*) lut_output lutoua(.in(chal[i+1] ? outwla[i] : outwlb[i]),.out(outwl[i+1]));
	//(*keep*) (*syn_preserve*) (*noprune*) lut_output lutoua(.in(chal[i] ? outwl[i] : outwl[i]),.out(outwl[i+1]));
	end
	
endgenerate
////(*KEEP ="TRUE"*) DFFE dffl(.d(1'b1),.clk(outwl[63]),.ena(1'b1),.prn(1'b1),.q(resp));
(*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dffl (.D(1'b1),.C(outwl[cwidth-1]),.CE(1'b1),.CLR(clr),.Q(resp));
//(*DONT_TOUCH = "TRUE"*) FDPE #(.INIT(1'b1)) dffl (.D(1'b0),.C(outwl[cwidth-1]),.CE(1'b1),.PRE(clr),.Q(resp));
//(*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dffl (.D(1'b1),.C(clk),.CE(outwl[cwidth-1]),.CLR(clr),.Q(resp));
//(*DONT_TOUCH = "TRUE"*) LDCE #(.INIT(1'b0)) dffl (.D(1'b1),.G(1'b1),.GE(outwl[cwidth-1]),.CLR(clr),.Q(resp));
//(*DONT_TOUCH = "TRUE"*) LDCE #(.INIT(1'b0)) dffl (.D(1'b1),.G(outwl[cwidth-1]),.GE(1'b1),.CLR(clr),.Q(resp));
//nor nga2 (.O(),.I1(),.I2());
//(*KEEP ="TRUE"*) assign resp=outwl[cwidth-1];
//(*DONT_TOUCH = "TRUE"*) nor nga1 (Qb,clr,Qbn);
//(*DONT_TOUCH = "TRUE"*) nor nga2 (Qbn,Qb,outwl[cwidth-1]);

//(*DONT_TOUCH = "TRUE"*) LUT2 #(.INIT(4'h1)) noru (.O(Qb),.I0(clr),.I1(Qbn));
//(*DONT_TOUCH = "TRUE"*) LUT2 #(.INIT(4'h1)) nord (.O(Qbn),.I0(Qb),.I1(outwl[cwidth-1]));
//(*KEEP ="TRUE"*) assign resp=Qbn;
endmodule
