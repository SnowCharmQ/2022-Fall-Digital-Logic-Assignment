// DeMorgan2bit_df.v

module DeMorgan_df(a, b, out1, out2, out3, out4);

input [1:0] a;
input [1:0] b;

output [1:0] out1;
output [1:0] out2;
output [1:0] out3;
output [1:0] out4;

assign out1[1] = ~(a[1] | b[1]);
assign out1[0] = ~(a[0] | b[0]);
assign out2[1] = (~a[1]) & (~b[1]);
assign out2[0] = (~a[0]) & (~b[0]);
assign out3[1] = ~(a[1] & b[1]);
assign out3[0] = ~(a[0] & b[0]);
assign out4[1] = ~a[1] | ~b[1];
assign out4[0] = ~a[0] | ~b[0];

endmodule