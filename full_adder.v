`timescale	10ns/100ps
`include "./half_adder.v"

module full_adder(SUM,C_out,X,Y,Cin);

input X,Y,Cin;
output SUM,C_out;

half_adder HA1(X,Y,hs,hc);  
half_adder HA2(hs,Cin,SUM,C2);

or(C_out,C2,hc);

endmodule
