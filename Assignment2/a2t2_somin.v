// a2t2_somin.v

module a2t2_somin(input[3:0] x, output y);

wire tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10;

and u1(tmp1, ~x[3], ~x[2], ~x[1], ~x[0]);
and u2(tmp2, ~x[3], ~x[2], ~x[1], x[0]);
and u3(tmp3, ~x[3], ~x[2], x[1], ~x[0]);
and u4(tmp4, ~x[3], ~x[2], x[1], x[0]);
and u5(tmp5, ~x[3], x[2], ~x[1], ~x[0]);
and u6(tmp6, ~x[3], x[2], ~x[1], x[0]);
and u7(tmp7, ~x[3], x[2], x[1], ~x[0]);
and u8(tmp8, ~x[3], x[2], x[1], x[0]);
and u9(tmp9, x[3], ~x[2], ~x[1], ~x[0]);
and u10(tmp10, x[3], ~x[2], ~x[1], x[0]);

or u11(y, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10);

endmodule