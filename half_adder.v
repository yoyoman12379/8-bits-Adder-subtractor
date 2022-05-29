module half_adder(X,Y,SUM,C_out);
input X,Y;
output SUM,C_out;

xor(SUM,X,Y);
and(C_out,X,Y);

endmodule