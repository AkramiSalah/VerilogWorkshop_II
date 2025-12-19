// 1-bit ALU template
module alu1bit (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------
logic or_out, xnor_out;
logic d0, d1, d2, d3;
logic fas_s;
logic a_ns;



OR2   #(.Tpdlh(5), .Tpdhl(5)) g_or   (.A(a), .B(b), .Z(or_out));
NAND2 #(.Tpdlh(8), .Tpdhl(8)) g_inv0 (.A(or_out), .B(or_out), .Z(d0));

XNOR2 #(.Tpdlh(2), .Tpdhl(2)) g_xnor (.A(a), .B(b), .Z(xnor_out));
NAND2 #(.Tpdlh(8), .Tpdhl(8)) g_inv1 (.A(xnor_out), .B(xnor_out), .Z(d1));

NAND2 #(.Tpdlh(8), .Tpdhl(8)) g_ans  (.A(op[1]), .B(op[0]), .Z(a_ns));


fas fas_inst (
    .a(a),
    .b(b),
    .cin(cin),
    .a_ns(a_ns),
    .s(fas_s),
    .cout(cout) 
);

assign d2 = fas_s;
assign d3 = fas_s;

mux4 #(.Tpdlh(8), .Tpdhl(8)) alu_mux (
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .sel(op),
    .z(s)
);

// End of your code

endmodule
