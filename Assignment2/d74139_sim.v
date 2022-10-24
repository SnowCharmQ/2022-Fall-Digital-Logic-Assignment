// d74139_sim.v

`timescale 1ps / 1ps

module d74139_sim();

reg sne;
reg [1:0] sx;
wire [3:0] sy;

d74139 d(.ne(sne), .x(sx), .y(sy));

initial begin
    {sne, sx} = 3'b0;
    repeat(7) #1 {sne, sx} = {sne, sx} + 1;
    #1 $finish();
end

endmodule