// a2t1_xor.v

module a2t1_xor(input [3:0] x, output y);

wire tmp1, tmp2;

xor u1(tmp1, x[3], x[2]);
xor u2(tmp2, x[1], x[0]);
xor u3(y, tmp1, tmp2);

endmodule