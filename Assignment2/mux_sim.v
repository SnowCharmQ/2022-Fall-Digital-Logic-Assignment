// mux_sim.v

`timescale 1ps / 1ps

module mux_sim();

reg [15:0] sx;
reg [3:0] ssel;
wire sy;

mux16to1 mux(.x(sx), .sel(ssel), .y(sy));

initial begin
    {sx, ssel} = 20'b0;
    repeat(1048575) #1 {sx, ssel} = {sx, ssel} + 1;
    #1 $finish();
end

endmodule