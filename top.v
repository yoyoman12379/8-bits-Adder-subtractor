`timescale	10ns/100ps
`include "./full_adder.v"

module adder(SUM,C_out,X,Y,Cin,Add_ctrl);

input [7:0] X,Y;
input Cin;
output [7:0] SUM;
output C_out;
wire [7:1] C;
wire [7:0] _Y;
input Add_ctrl;



xor(_Y[0],Y[0],Cin);
xor(_Y[1],Y[1],Cin);
xor(_Y[2],Y[2],Cin);
xor(_Y[3],Y[3],Cin);
xor(_Y[4],Y[4],Cin);
xor(_Y[5],Y[5],Cin);
xor(_Y[6],Y[6],Cin);
xor(_Y[7],Y[7],Cin);



full_adder FA1(SUM[0],C[1],X[0],_Y[0],Cin);
full_adder FA2(SUM[1],C[2],X[1],_Y[1],C[1]);
full_adder FA3(SUM[2],C[3],X[2],_Y[2],C[2]);
full_adder FA4(SUM[3],C[4],X[3],_Y[3],C[3]);
full_adder FA5(SUM[4],C[5],X[4],_Y[4],C[4]);
full_adder FA6(SUM[5],C[6],X[5],_Y[5],C[5]);
full_adder FA7(SUM[6],C[7],X[6],_Y[6],C[6]);
full_adder FA8(SUM[7],C_out,X[7],_Y[7],C[7]);

endmodule





