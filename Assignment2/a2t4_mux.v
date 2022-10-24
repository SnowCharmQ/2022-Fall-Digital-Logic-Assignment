// a2t4_mux.v

module a2t4_mux(input [4:0] x, output y);

wire [15:0] sx;
wire [3:0] ssel;
wire tmp1, tmp2, tmp3, tmp4;

assign ssel = x[3:0];
assign sx = {15'b0000_0001_0001_011, x[4]};
mux16to1 umux(.x(sx), .sel(ssel), .y(tmp1));
and u1(tmp2, ~x[0], ~x[1], ~x[2], ~x[3]);
and u2(tmp3, tmp2, tmp1, x[4]);
and u3(tmp4, ~tmp2, tmp1, ~x[4]);
or u4(y, tmp3, tmp4);

endmodule