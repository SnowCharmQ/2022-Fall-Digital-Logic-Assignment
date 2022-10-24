// a2t4_dc.v

module a2t4_dc(input [4:0] x, output y);

wire sne;
wire [1:0] sx1, sx2, sx3;
wire [3:0] tmp1;
wire [3:0] tmp2;
wire [3:0] tmp3;
wire tmp4, tmp5, tmp6, tmp7, tmp8;

assign sne = 1'b0;
assign sx1 = x[1:0];
assign sx2 = x[3:2];
assign sx3 = {1'b0, x[4]};

d74139 d1(.ne(sne), .x(sx1), .y(tmp1));
d74139 d2(.ne(sne), .x(sx2), .y(tmp2));
d74139 d3(.ne(sne), .x(sx3), .y(tmp3));

and u1(tmp4, tmp1[3], tmp2[3], tmp3[3]);

and u3(tmp5, ~tmp1[1], tmp2[1], tmp3[1]);
and u4(tmp6, tmp1[1], ~tmp2[1], tmp3[1]);
and u5(tmp7, tmp1[1], tmp2[1], ~tmp3[1]);
or u6(tmp8, tmp5, tmp6, tmp7);

and u7(tmp9, ~tmp1[2], tmp2[2], tmp3[2]);
and u8(tmp10, tmp1[2], ~tmp2[2], tmp3[2]);
and u9(tmp11, tmp1[2], tmp2[2], ~tmp3[2]);
or u10(tmp12, tmp9, tmp10, tmp11);

or u11(tmp13, tmp8, tmp12);

and u12(tmp14, ~tmp1[0], ~tmp2[0], tmp3[0]);
and u13(tmp15, ~tmp1[0], tmp2[0], ~tmp3[0]);
and u14(tmp16, tmp1[0], ~tmp2[0], ~tmp3[0]);
or u15(tmp17, tmp14, tmp15, tmp16);

and u16(y, tmp4, tmp13, tmp17);

endmodule