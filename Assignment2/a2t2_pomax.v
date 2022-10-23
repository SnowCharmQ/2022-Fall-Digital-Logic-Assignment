// a2t2_pomax.v

module a2t2_pomax(input[3:0] x, output y);

wire tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;

or u1(tmp1, ~x[3], x[2], ~x[1], x[0]);
or u2(tmp2, ~x[3], x[2], ~x[1], ~x[0]);
or u3(tmp3, ~x[3], ~x[2], x[1], x[0]);
or u4(tmp4, ~x[3], ~x[2], x[1], ~x[0]);
or u5(tmp5, ~x[3], ~x[2], ~x[1], x[0]);
or u6(tmp6, ~x[3], ~x[2], ~x[1], ~x[0]);

and u7(y, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6);

endmodule