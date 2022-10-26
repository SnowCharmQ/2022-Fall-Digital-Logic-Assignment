// decoder_mux_sim.v

`timescale 1ns / 1ps

module decoder_mux_sim();

reg [15:0] mux_x;
reg [3:0] mux_sel;
wire mux_y;

reg d_ne;
reg [1:0] d_x;
wire [3:0] d_y;

mux16to1 mux(.x(mux_x), .sel(mux_sel), .y(mux_y));
d74139 d(.ne(d_ne), .x(d_x), .y(d_y));

initial begin
    mux_x = 16'b0000_0000_0000_0001;
    mux_sel = 4'b0000;
    #10 
    mux_x = 16'b0000_0000_0000_0010;
    mux_sel = 4'b0001;
    #10
    mux_x = 16'b0000_0000_0000_0100;
    mux_sel = 4'b0010;
    #10
    mux_x = 16'b0000_0000_0000_1000;
    mux_sel = 4'b0011;
    #10
    mux_x = 16'b0000_0000_0001_0000;
    mux_sel = 4'b0100;
    #10
    mux_x = 16'b0000_0000_0010_0000;
    mux_sel = 4'b0101;
    #10
    mux_x = 16'b0000_0000_0100_0000;
    mux_sel = 4'b0110;
    #10
    mux_x = 16'b0000_0000_1000_0000;
    mux_sel = 4'b0111;
    #10
    mux_x = 16'b0000_0001_0000_0000;
    mux_sel = 4'b1000;
    #10
    mux_x = 16'b0000_0010_0000_0000;
    mux_sel = 4'b1001;
    #10
    mux_x = 16'b0000_0100_0000_0000;
    mux_sel = 4'b1010;
    #10
    mux_x = 16'b0000_1000_0000_0000;
    mux_sel = 4'b1011;
    #10
    mux_x = 16'b0001_0000_0000_0000;
    mux_sel = 4'b1100;
    #10
    mux_x = 16'b0010_0000_0000_0000;
    mux_sel = 4'b1101;
    #10
    mux_x = 16'b0100_0000_0000_0000;
    mux_sel = 4'b1110;
    #10
    mux_x = 16'b1000_0000_0000_0000;
    mux_sel = 4'b1111;
    #10
    {d_ne, d_x} = 3'b0;
    repeat(7) #10 {d_ne, d_x} = {d_ne, d_x} + 1;
    #10 $finish();
end

endmodule