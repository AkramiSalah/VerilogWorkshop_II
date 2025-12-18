// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);
/* 
	 tPDLH tPDHL
NAND2	8	8
OR2	5	5
XNOR2	2	2

*/


// Put your code here
// ------------------
	
	assign z = NAND2 (NAND2 (NAND2 (sel, sel), d0), NAND2 (sel, d1));	
	
// End of your code

endmodule
