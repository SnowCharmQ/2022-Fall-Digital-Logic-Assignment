// a2t2_sim.v

`timescale 1ns / 1ps

module a2t2_sim();
reg [3:0] sx;
wire sy_somin, sy_pomax;

a2t2_somin sd_somin(.x(sx), .y(sy_somin));
a2t2_pomax sd_pomax(.x(sx), .y(sy_pomax));

initial begin
    sx = 4'b0;
    repeat(15) #10 sx = sx + 1;
    #10 $finish();
end

endmodule