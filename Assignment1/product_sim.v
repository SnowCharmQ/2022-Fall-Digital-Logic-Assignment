// product_sim.v

`timescale 1ns / 1ps

module product_sim();
reg [1:0] in1_sim, in2_sim;
wire [3:0] product_led_sim;

UnsignedMultiplier unsignedmultiplier(.in1(in1_sim), .in2(in2_sim), .product_led(product_led_sim));

initial begin
    in1_sim = 2'b0; in2_sim = 2'b0;
    repeat(15) #10 {in1_sim,in2_sim} = {in1_sim,in2_sim} + 1;
    #10 $finish();
end

endmodule