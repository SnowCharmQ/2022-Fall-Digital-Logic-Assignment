// DeMorgan2bit_sd.v

module DeMorgan_sd(input[1:0] a, b, output[1:0] out1, out2, out3, out4);

wire tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;

or u1(tmp1, a[0], b[0]);
not u2(out1[0], tmp1);
or u3(tmp2, a[1], b[1]);
not u4(out1[1], tmp2);

not u5(tmp3, a[0]);
not u6(tmp4, b[0]);
and u7(out2[0], tmp3, tmp4);
not u8(tmp5, a[1]);
not u9(tmp6, b[1]);
and u10(out2[1], tmp5, tmp6);

and u11(tmp7, a[0], b[0]);
not u12(out3[0], tmp7);
and u13(tmp8, a[1], b[1]);
not u14(out3[1], tmp8);

or u15(out4[0], tmp3, tmp4);
or u16(out4[1], tmp5, tmp6);

endmodule