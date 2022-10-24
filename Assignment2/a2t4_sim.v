// a2t4_sim.v

`timescale 1ns / 1ps

module a2t4_sim();

reg [4:0] sx;
wire sy_mux;

a2t4_mux mux(.x(sx), .y(sy_mux));

initial begin
    sx = 5'b0;
    repeat(31) #10 sx = sx + 1;
    #10 $finish();
end

endmodule