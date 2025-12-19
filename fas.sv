// Full Adder/Subtractor template
module fas (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic a_ns,        // A_nS (add/not subtract) control
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------

logic g1_out, g2_out, g3_out, g4_out, g7_out;

XNOR2 #(.Tpdlh(2), .Tpdhl(2)) g1 (.A(b),      .B(cin),    .Z(g1_out));
XNOR2 #(.Tpdlh(2), .Tpdhl(2)) g4 (.A(a),      .B(a_ns),   .Z(g4_out));
XNOR2 #(.Tpdlh(2), .Tpdhl(2)) g5 (.A(a),      .B(g1_out), .Z(s));


NAND2 #(.Tpdlh(8), .Tpdhl(8)) g2 (.A(b),      .B(cin),    .Z(g2_out));
NAND2 #(.Tpdlh(8), .Tpdhl(8)) g7 (.A(g3_out), .B(g4_out), .Z(g7_out));
NAND2 #(.Tpdlh(8), .Tpdhl(8)) g6 (.A(g2_out), .B(g7_out), .Z(cout));


OR2   #(.Tpdlh(5), .Tpdhl(5)) g3 (.A(b),      .B(cin),    .Z(g3_out));
// End of your code

endmodule
