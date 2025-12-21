// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);



// Put your code here
// ------------------
	
	// assign z  NAND2 (NAND2 (NAND2 (sel, sel), d0), NAND2 (sel, d1));	
	logic g2_res;
	logic g1_res;
	logic g3_res;
	
	
	//NAND2(sel,sel);
    NAND2 gate2 (.A(sel),   .B(sel),   .Z(g2_res));

    // NAND2(sel,d1);
    NAND2 gate3 (.A(sel),   .B(d1),    .Z(g3_res));
    
    // NAND2(g2, d0);
    NAND2 gate1 (.A(g2_res), .B(d0),    .Z(g1_res));

    // NAND2(g3,g1);
    NAND2 gate4 (.A(g1_res),    .B(g3_res),    .Z(z));
	
// End of your code

endmodule
