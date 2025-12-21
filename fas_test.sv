// Full Adder/Subtractor test bench template
module fas_test;

// Put your code here
// ------------------
logic a;
logic b;
logic cin;
logic a_ns;
logic s;
logic cout;

fas tester(
    .a(a),
    .b(b),
    .cin(cin),
    .a_ns(a_ns),
    .s(s),
    .cout(cout)
);


initial begin
    a = 1'b0;
    b = 1'b0;
    cin = 1'b0;
    a_ns = 1'b0;

    #21
    a = 1'b1;

    #21
    a = 1'b0;
    
    #21


end

// End of your code

endmodule
