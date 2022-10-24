// mux16to1.v

module mux16to1(input [15:0] x, [3:0] sel, output reg y);

always @(*) begin
    case(sel)
        4'b0000: y = x[0];
        4'b0001: y = x[1];
        4'b0010: y = x[2];
        4'b0011: y = x[3];
        4'b0100: y = x[4];
        4'b0101: y = x[5];
        4'b0110: y = x[6];
        4'b0111: y = x[7];
        4'b1000: y = x[8];
        4'b1001: y = x[9];
        4'b1010: y = x[10];
        4'b1011: y = x[11];
        4'b1100: y = x[12];
        4'b1101: y = x[13];
        4'b1110: y = x[14];
        4'b1111: y = x[15];
        default: y = 0;
    endcase
end

endmodule