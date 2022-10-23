// a2t1_nand.v

module a2t1_nand(input [3:0] x, output y);

wire tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11;

nand u1(tmp1, x[3], x[2]);
nand u2(tmp2, x[3], tmp1);
nand u3(tmp3, x[2], tmp1);
nand u4(tmp4, tmp2, tmp3);

nand u5(tmp5, x[1], x[0]);
nand u6(tmp6, x[1], tmp5);
nand u7(tmp7, x[0], tmp5);
nand u8(tmp8, tmp6, tmp7);

nand u9(tmp9, tmp4, tmp8);
nand u10(tmp10, tmp4, tmp9);
nand u11(tmp11, tmp8, tmp9);
nand u12(y, tmp10, tmp11);

endmodule