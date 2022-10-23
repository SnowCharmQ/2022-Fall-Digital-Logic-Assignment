// a2t1_sim.v

`timescale 1ns / 1ps

module a2t1_sim();
reg [3:0] sx;
wire sy_xor, sy_nand;

a2t1_xor sd_xor(.x(sx), .y(sy_xor));
a2t1_nand sd_nand(.x(sx), .y(sy_nand));

initial begin
    sx = 4'b0;
    repeat(15) #10 sx = sx + 1;
    #10 $finish();
end

endmodule