module ass1_task3(input a,b,c,d, output out1, out2, out3);

assign out1 = ~a&~b&~c&~d | ~a&~b&c&d | ~a&~b&c&~d | ~a&b&c&d | ~a&b&c&~d | a&b&~c&~d | a&b&~c&d | a&b&c&d | a&~b&c&d | a&~b&c&~d;
assign out2 = (a|b|c|~d) & (a|~b|c|d) & (a|~b|c|~d) & (~a|~b|~c|d) & (~a|b|c|d) & (~a|b|c|~d);
assign out3 = a&b&~c | ~a&~b&~d | c&d | ~b&c | ~a&c;

endmodule