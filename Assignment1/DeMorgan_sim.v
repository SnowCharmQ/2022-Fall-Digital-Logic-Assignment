`timescale 1ns / 1ps

module DeMorgan_sim();

reg [1:0]  sa, sb;
wire [1:0] so1, so2, so3, so4, so5, so6, so7, so8;

DeMorgan_df df(.a(sa), .b(sb), .out1(so1), .out2(so2), .out3(so3), .out4(so4));
DeMorgan_sd desd(.a(sa), .b(sb), .out1(so5), .out2(so6), .out3(so7), .out4(so8));

initial begin
    {sa, sb} = 4'b0;
    repeat(15) #10 {sa, sb} = {sa, sb} + 1;
    #10 $finish();
end  

endmodule