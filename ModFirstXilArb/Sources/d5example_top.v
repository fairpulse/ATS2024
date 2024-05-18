`timescale 1ns / 1ps

module d5example_top (
input CLK,
     //input d16clk,
output txd
);
//reg CLK=1'b0;
//always #5 CLK=~CLK;
(*KEEP = "TRUE"*) wire sysclk;

(*KEEP = "TRUE"*) wire lfsrclk;
reg lfsrce=0;
(*KEEP = "TRUE"*) reg [63:0] clrlfsr=64'hFFFF_FFFF_FFFF_FFFF;
//wire [63:0] clrlfsr;
(*KEEP = "TRUE"*) reg [63:0] prelfsr=64'd0;
//wire [63:0] prelfsr;
(*KEEP = "TRUE"*) wire obit;
//(*KEEP = "TRUE"*) reg [63:0] ldw=64'hFFFF_FFFF_FFFF_FFFF;
(*KEEP = "TRUE"*) wire [63:0] ldw;
(*KEEP = "TRUE"*) wire uartdone,lfsrdone;
//wire [63:0] rddata;
(*KEEP = "TRUE"*) reg [63:0] rddata=64'hFFFF_FFFF_FFFF_FFFF;
//(*KEEP = "TRUE"*) reg [15:0] rddata=16'd0;
(*KEEP = "TRUE"*) wire uartclk, uartRdy;
(*KEEP = "TRUE"*) wire pufclk;
//(*KEEP = "TRUE"*) wire gosen;
reg gosen=1'b0;
(*KEEP = "TRUE"*) wire lfsrclken;
(*KEEP = "TRUE"*) wire uartclken;
(*KEEP = "TRUE"*) wire pufclken;
(*KEEP = "TRUE"*) wire ten;

(*KEEP = "TRUE"*) wire resp;
reg tresp=1'b0;
(*KEEP = "TRUE"*) wire pufen;
//reg pufen=1'b0;
reg pufrst=1'b1;
//(*KEEP = "TRUE"*) wire pufrst;
(*KEEP = "TRUE"*) reg [15:0] chalin=16'd0;
//(*KEEP = "TRUE"*) wire [63:0] chalin;

//(*KEEP = "TRUE"*) reg [1:0] i=2'd0;
(*KEEP = "TRUE"*) reg [5:0] j=6'd0;
//(*KEEP = "TRUE"*) reg [1:0] k=2'd0;
(*KEEP = "TRUE"*) reg [31:0] count=32'd0;
(*KEEP = "TRUE"*) reg [31:0] tcount=32'd0;
//(*KEEP = "TRUE"*) wire wrend, rwslot;

BUFG clkbuffer (
.O(sysclk),
.I(CLK)
); 

/*
(*KEEP_HIERARCHY = "TRUE", DONT_TOUCH = "TRUE"*) BUFGCE lfsrbuf (
.O(lfsrclk),
.CE(lfsrclken),
.I(CLK)
);
*/

(*KEEP_HIERARCHY = "TRUE", DONT_TOUCH = "TRUE"*) BUFGCE uartbuf (
.O(uartclk),
.CE(uartclken),
.I(CLK)
);

(*KEEP_HIERARCHY = "TRUE", DONT_TOUCH = "TRUE"*) BUFGCE pufbuf (
.O(pufclk),
.CE(pufclken),
.I(CLK)
);

//(*KEEP_HIERARCHY = "TRUE", DONT_TOUCH = "TRUE"*) LinFedShiRegAcc lfsr (.lfsrdone(lfsrdone), .ldw(ldw),.lfsrclk(lfsrclk),.preset(prelfsr),.clear(clrlfsr));

(*KEEP_HIERARCHY = "TRUE", DONT_TOUCH = "TRUE"*) d5FirstXilArbiter arbpuf (.resp(resp),.clk(pufclk),.en(pufen),.ten(ten),.rst(pufrst),.chalin(chalin));

(*KEEP_HIERARCHY = "TRUE", DONT_TOUCH = "TRUE"*) uartmod uart64 (.txd(txd),.uartdone(uartdone),.uartRdy(uartRdy),.uartclk(uartclk),.gosen(gosen),.rddata(rddata));

//assign wrend=(~|count[31:10]) & (&count[9:2]);//counting for 1024 challenges(64-bit each) and staying longer for d16clock to detect
//(*KEEP = "TRUE"*) assign wrend=(~|count[31:14]) & (&count[13:2]);
//assign wrend=(~|count[31:16]) & (&count[15:2]); //20 mins
//(*KEEP = "TRUE"*) assign wrend=(~|count[31:18]) & (&count[17:2]);
//(*KEEP = "TRUE"*) assign wrend=(~|count[31:21]) & (&count[20:2]);
//(*KEEP = "TRUE"*) assign wrend=(~|count[31:22]) & (&count[21:2]); //5.5 hours and 2097151~=2^21
//assign wrend=(~|count[31:10]);
//ldw
//parameter S0=4'b0000, S1=4'b0001, S2=4'b0010, S3=4'b0011, S4=4'b0100, S5=4'b0101, S6=4'b0110, S7=4'b0111, S8=4'b1000, S9=4'b1001, S10=4'b1010, S11=4'b1011, S12=4'b1100, S13=4'b1101, S14=4'b1110, S15=4'b1111;
parameter S0=4'b0000, S1=4'b0001, S2=4'b0011, S3=4'b0010, S4=4'b0110, S5=4'b0111, S6=4'b0101, S7=4'b0100, S8=4'b1100, S9=4'b1101, S10=4'b1111, S11=4'b1110, S12=4'b1010, S13=4'b1011, S14=4'b1001, S15=4'b1000;
(*KEEP = "TRUE"*) reg [3:0] NS=S0;
(*KEEP = "TRUE"*) reg [3:0] PS=S0;


(*KEEP = "TRUE"*) reg [6:0] jc=7'd0; //counter for 64-bit width for each challenge
//(*KEEP = "TRUE"*) reg [6:0] jc=7'd0;
(*KEEP = "TRUE"*) reg [5:0] i=6'd0;
reg k=1'b0;
//(*KEEP = "TRUE"*) reg [10:0] j=11'd0;
//reg [6:0] jc=7'h00; //counter for 64-bit width for each challenge
reg [5:0] jr=6'h00; //sys_rst counter
//reg [6:0] jc=7'h7F;//for user interface the data width is 128
//reg [127:0] ldw=128'd0;
//reg [63:0] ldw=64'd0;
//(*KEEP = "TRUE"*) reg [63:0] ldw=64'hFFFF_FFFF_FFFF_FFFF;
//reg [127:0] tempw=128'd0;
//wire [63:0] tempw;
//reg [63:0] tempw=64'd0;
(*KEEP = "TRUE"*) reg [15:0] chalw=16'h0000;
(*KEEP = "TRUE"*) reg [63:0] tempw=64'h0000_0000_0000_0000;
//(*KEEP = "TRUE"*) reg [63:0] rtempw=64'd0;
(*KEEP = "TRUE"*) reg [7:0] rtempw=8'h00;
//reg [63:0] tempr={48'hFFFF_FFFF_FFFF,16'h0000}; //Number of responses for each challenge
//reg [63:0] tempw=64'hCDB5_A559_AB83_F00A;
// reg lfsrclken,memclken,uartclken;//Active HIGH

wire lfsrrdy;
//reg wridone=0;
wire wridone;
//reg allover=0;
wire allover;
(*KEEP = "TRUE"*) wire tjc,tj,rdcou,ttmvc;
//(*KEEP = "TRUE"*) reg tjc=1'b0;
wire tpufcou;
//reg trcbar=1'b0;

//(*KEEP = "TRUE"*) reg rcbar=1'b0; //Response / Challenge bar generation
(*KEEP = "TRUE"*) reg rcbar=1'b1; 
//reg trcbar=1'b1;
//wire rcbar;
//reg [2:0] tmvc=3'd0; //Temporal majority vote / repetition code for checking errors
(*KEEP = "TRUE"*) reg [2:0] tmvc=3'b000;
//(*KEEP = "TRUE"*) reg [1:0] pufcou=2'd0; //idle wait for 160ns to let resp generation in S6 state
(*KEEP = "TRUE"*) reg pufcou=1'b0;
//(*KEEP = "TRUE"*) reg [2:0] pufcou=3'd0;
//wire gosen;
//wire d32clk;

//assign lfsrclken=1'b1;
assign lfsrclken = ((PS==S1) || (PS==S2) || (PS==S5) || (PS==S6)) ? 1 : 0;

assign uartclken = 1;

assign pufclken = 1;
assign pufen = ((PS==S5) || (PS==S6) || (PS==S7)) ? 1'b1 : 1'b0; //MUST BE ACTIVE FOR ATLEAST TWO CLOCK CYCLES, as it acts as both stacent/b and CE for triga/b
//assign pufen = ((PS==S5) || (PS==S6)) ? 1'b1 : 1'b0;
assign ten = (PS==S7) ? 1'b1 : 1'b0;

//assign pufen = ((PS==S11)) ? 1 : 0;
//assign pufrst = ((PS==S9)) ? 1 : 0; 
assign tj=&j;
//assign tj=1'b1;
//assign tjc=(jc[8]);
//assign tjc=~|jc[5:0];
//assign rdcou=(&jc[5:1]) & (~jc[0]);
assign rdcou=&jc;
assign ttmvc=&tmvc;
assign tpufcou=&pufcou;
//assign gosen= ((PS==S14) || (PS==S8)) ? 1 : 0; 
//assign chalin= tempw;
//assign gosen= ((PS==S8)) ? 1 : 0;
//assign rddata= (rcbar==1'b0) ? tempw : rtempw;
//assign rddata = ((PS==S15) || (PS==S14)) ? tempw : (((PS==S5) || (PS==S8)) ? rtempw : 64'd0);
//assign rddata=rtempw;
//assign prelfsr= (NS==S2) ? 64'hCDB5_A559_AB83_F00A : 64'd0;
//assign clrlfsr= (NS==S1) ? 64'hFFFF_FFFF_FFFF_FFFF : 64'd0;
assign allover=&chalw;

always @(posedge sysclk) begin
PS<=NS;
end

/*
always @(*) begin
tresp<=resp;
end
*/
//State transitions

always @(PS, uartdone, uartRdy, ttmvc, tpufcou, jr, allover) begin
case (PS)
S0: begin
	if(jr==6'h1F)//for 31*10ns sys_rst stays 0
    	NS=S1;
    	else
    	NS=S0;
end
S1: begin
    NS=S2;
end

S2: begin
    NS=S3;
end

S3: begin 
	NS=S4;
end

S4: begin
	NS=S5;
end

S5: begin
    NS=S6;
end

S6: begin
   if(tpufcou==1) //idle wait for 16 sysclks
   NS=S7;
   else
   NS=S6;
end

S7: begin
    NS=S8;
end

S8: begin
    if(ttmvc==1)
    NS=S9;
    else
    NS=S1;
end

S9: begin
    if(uartRdy==1)
    NS=S10;
    else
    NS=S9;
end

S10: begin
    NS=S11;

end

S11: begin
    if(jr==8'h04) //to ensure that uartdone will go low after detecting a gosen high
    NS=S12;
    else
    NS=S11;
end

S12: begin
	if(uartdone==1)	
    NS=S13;
    else
    NS=S12;
end

S13: begin
    if(allover==1)
    NS=S14;
    else
    NS=S1;
end

S14: begin
    NS=S14;
end

default: NS=S0;

endcase
end

always @(posedge sysclk) begin
    if(PS==S0 || PS==S11) begin
        if(allover==1'b1) begin
        jr<=6'h00;
        end
        else
        jr<=jr+1;
    end
	else if (PS==S1)
	jr<=6'h00;
end

always @(PS) begin
//always @(posedge clk) begin
if(PS==S3 || PS==S4 || PS==S5 || PS==S6 || PS==S7)
pufrst<=1'b0;
else
pufrst<=1'b1;
end

always @(posedge sysclk) begin
if (PS==S3 || PS==S4) begin
    chalin<=chalw;
end
end

always @(posedge sysclk) begin
if (PS==S1) begin
    pufcou<=1'b0;
    //pufcou<=3'd0;
end
else if (PS==S6) begin
    pufcou<=pufcou+1;
end
end

always @(posedge sysclk) begin
if(PS==S7) begin
rtempw[tmvc]<=resp;
end
end


always @(posedge sysclk) begin
if(PS==S8) begin
tmvc<=tmvc+1;
end
else if(PS==S9) begin
tmvc<=3'b000;
end
end

always @(posedge sysclk) begin
if(PS==S9) begin
tempw[63:12] = {chalw,20'hC0A0A,16'hFFFF};
rddata={tempw[63:12],rtempw,4'hC};
end
end

always @(PS) begin
if (PS==S10) begin
    gosen=1'b1;
end
else
    gosen=1'b0;
end

always @(posedge sysclk) begin
if(PS==S13) begin
chalw<=chalw+1;
end
else if (PS==S0)
chalw<=16'h0000;
end

endmodule

