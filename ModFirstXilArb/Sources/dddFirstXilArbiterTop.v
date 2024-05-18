`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT Kharagpur
// Engineer: Venkata Sreekanth Balijabudda
// 
// Create Date: 04.03.2020 10:44:37
// Design Name: 
// Module Name: FirstXilArbiterTop
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


module dddFirstXilArbiterTop #(parameter cwidth = 64) (
input trig,
input [cwidth-1:0] chal,
input pre,
//input clk,
output resp
);


(*KEEP ="TRUE"*) wire [cwidth-1:0] outwl;
(*KEEP ="TRUE"*) wire [cwidth-1:0] outwla,outwlb;
(*KEEP ="TRUE"*) wire [cwidth-1:0] chalw;
//(*KEEP ="TRUE"*) wire clr=1'b0;

//(*DONT_TOUCH = "TRUE"*) wire triga, trigb;
(*KEEP ="TRUE"*) wire triga, trigb;
(*KEEP ="TRUE"*) wire Rt, St, Qt, Qtn;

(*KEEP ="TRUE"*) wire [(3*cwidth)-1:0] cout;



(*KEEP ="TRUE"*) assign triga = trig;
(*KEEP ="TRUE"*) assign trigb = trig;
(*KEEP ="TRUE"*) assign outwla=outwl;
(*KEEP ="TRUE"*) assign outwlb=outwl;


	//(*DONT_TOUCH = "TRUE"*) lut_input lutin(.in(chal[0]),.out(chalw[0]));
//(*DONT_TOUCH = "TRUE"*) (*LOCK_PINS = "I0:A3, I1:A1, I2:A6"*) LUT3 #(.INIT(8'hE4)) muxer0 (.O(outwl[0]),.I0(chal[0]),.I1(trigb),.I2(triga));
//(*DONT_TOUCH = "TRUE"*) LUT3 #(.INIT(8'hE4)) muxer0 (.O(outwl[0]),.I0(chal[0]),.I1(trigb),.I2(triga));

//(*DONT_TOUCH = "TRUE"*) LUT1 #(.INIT(2'b00)) lut0 (.O(outwl[0]),.I0(chal[0]));
//(*DONT_TOUCH = "TRUE"*) MUXF7 muxer0 
//.O(O),
//.I0(I0),
//.I1(I1),
//.S(chal[0])
//);
	//(*DONT_TOUCH = "TRUE"*) lut_output lutou(.in(chal[0] ? trig : 1'b1),.out(outwl[0]));
(*DONT_TOUCH = "TRUE"*) CARRY4 cmuxer0 (
.CO({outwl[0],cout[2:0]}), //4-bit bus
.O(), //4-bit bus
.CI(trig),
.CYINIT(),
.DI(), //4-bit bus
.S(4'b1111) //4-bit bus
);
//(*KEEP ="TRUE"*) assign resp=outwl[cwidth-1];

generate
genvar i;

	for(i=0;i<cwidth-1;i=i+1) begin:TopLine
	//(*DONT_TOUCH = "TRUE"*) lut_input lutina(.in(chal[i+1]),.out(chalw[i+1]));
	////(*keep*) (*preserve*) assign outw[i+1]=chalw[i] ? outwl[i] : ~outwl[i];
	//(*DONT_TOUCH = "TRUE"*) (*LOCK_PINS = "I0:A3, I1:A1, I2:A6"*) LUT3 #(.INIT(8'hE4)) muxer (.O(outwl[i+1]),.I0(chal[i+1]),.I1(outwlb[i]),.I2(outwla[i]));
//	(*DONT_TOUCH = "TRUE"*) LUT3 #(.INIT(8'hE4)) muxer (.O(outwl[i+1]),.I0(chal[i+1]),.I1(outwlb[i]),.I2(outwla[i]));
//(*DONT_TOUCH = "TRUE"*) MUXF7 muxer (
//.O(O),
//.I0(I0),
//.I1(I1),
//.S(chal[i+1])
//);

(*DONT_TOUCH = "TRUE"*) CARRY4 cmuxer0 (
.CO({outwl[i+1],cout[(2+(3*(i+1))):(3*(i+1))]}), //4-bit bus
.O(), //4-bit bus
.CI(outwl[i]),
.CYINIT(),
.DI(), //4-bit bus
.S(4'b1111) //4-bit bus
);
	//(*DONT_TOUCH = "TRUE"*) lut_output lutoua(.in(chal[i+1] ? outwla[i] : outwlb[i]),.out(outwl[i+1]));
	//(*keep*) (*syn_preserve*) (*noprune*) lut_output lutoua(.in(chal[i] ? outwl[i] : outwl[i]),.out(outwl[i+1]));
	end
	
endgenerate
////(*KEEP ="TRUE"*) DFFE dffl(.d(1'b1),.clk(outwl[63]),.ena(1'b1),.prn(1'b1),.q(resp));

(*DONT_TOUCH = "TRUE"*) FDCE #(.INIT(1'b0)) dffl (.D(1'b1),.C(outwl[cwidth-1]),.CE(1'b1),.CLR(pre),.Q(resp));
//(*DONT_TOUCH = "TRUE"*) FDPE #(.INIT(1'b1)) dffl (.D(1'b0),.C(outwl[cwidth-1]),.CE(1'b1),.PRE(pre),.Q(resp));
//(*DONT_TOUCH = "TRUE"*) FDPE #(.INIT(1'b1)) dffl (.D(1'b0),.C(clk),.CE(outwl[cwidth-1]),.PRE(pre),.Q(resp));
//(*DONT_TOUCH = "TRUE"*) LDPE #(.INIT(1'b1)) dffl (.D(1'b0),.G(1'b1),.GE(outwl[cwidth-1]),.PRE(pre),.Q(resp));
//(*DONT_TOUCH = "TRUE"*) LDPE #(.INIT(1'b1)) dffl (.D(1'b0),.G(outwl[cwidth-1]),.GE(1'b1),.PRE(pre),.Q(resp));
//nor nga2 (.O(),.I1(),.I2());
//(*KEEP ="TRUE"*) assign resp=outwl[cwidth-1];
//(*DONT_TOUCH = "TRUE"*) nor nga1 (Qt,pre,Qtn);
//(*DONT_TOUCH = "TRUE"*) nor nga2 (Qtn,Qt,outwl[cwidth-1]);

//(*DONT_TOUCH = "TRUE"*) LUT2 #(.INIT(4'h1)) noru (.O(Qt),.I0(pre),.I1(Qtn));
//(*DONT_TOUCH = "TRUE"*) LUT2 #(.INIT(4'h1)) nord (.O(Qtn),.I0(Qt),.I1(outwl[cwidth-1]));

endmodule
