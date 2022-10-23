// d74139.v

module d74139(input ne, [1:0] x, output reg [3:0] y);

always @(*) begin
    casex({ne, x})
        3'b000: y = 4'b1110;
        3'b001: y = 4'b1101;
        3'b010: y = 4'b1011;
        3'b011: y = 4'b0111;
        default: y = 4'hf;
    endcase
end

endmodule