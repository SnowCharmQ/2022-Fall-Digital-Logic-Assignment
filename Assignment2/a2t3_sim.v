// a2t3_sim.v

`timescale 1ns / 1ps

module a2t3_sim();

reg [3:0] sx;
wire [3:0] sy_df, sy_bd;

a2t3_df df(.x(sx), .y(sy_df));
a2t3_bd bd(.x(sx), .y(sy_bd));

initial begin
    sx = 4'b0;
    repeat(15) #10 sx = sx + 1;
    #10 $finish();
end

endmodule