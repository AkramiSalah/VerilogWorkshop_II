// 64-bit ALU test bench template
module alu64bit_test;

// Put your code here
// ------------------

logic [63:0] a;
logic [63:0] b;
logic cin;
logic [1:0] op;
logic [63:0] s;
logic cout;

alu64bit tester(
    .a(a),
    .b(b),
    .cin(cin),
    .op(op),
    .s(s),
    .cout(cout)
);

initial begin
    a = 64'hFFFFFFFFFFFFFFFF;
    b = 64'h0000000000000001;
    cin = 1'b0;
    op = 2'b00;

    #1364

    op = 2b'01;

    #1364


end

// End of your code

endmodule
