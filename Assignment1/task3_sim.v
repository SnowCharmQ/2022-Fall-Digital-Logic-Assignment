`timescale 1ns / 1ps

module task3_sim();
reg sa, sb, sc, sd;
wire sz1, sz2, sz3;

ass1_task3 task3(.a(sa), .b(sb), .c(sc), .d(sd), .out1(sz1), .out2(sz2), .out3(sz3));

initial begin
    {sa, sb, sc, sd} = 2'b0;
    repeat(15) #10 {sa, sb, sc, sd} = {sa, sb, sc, sd} + 1;
    #10 $finish();
end  

endmodule