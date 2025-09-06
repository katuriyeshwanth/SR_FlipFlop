module test;
reg s,r,clk,rst;
wire q;
wire q_bar;
SR_flip_flop dut(s,r,clk,rst,q,q_bar);


always #5
clk=~clk;
initial
begin
rst=0;
clk=0;
s=0;
r=0;
$monitor($time,"s=%b,r=%b,clk=%b,rst=%b,q=%b,q_bar=%b",s,r,clk,rst,q,q_bar); 
#10 rst=1;
#7 s=1'b0; r=1'b0; 
#7 s=1'b0; r=1'b1; 
#7 s=1'b1; r=1'b0; 
#7 s=1'b1; r=1'b1; 
#20 $finish;
end
endmodule
