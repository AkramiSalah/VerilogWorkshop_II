// 4->1 multiplexer templd0te
module mux4 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic d2,          // Data input 2
    input logic d3,          // Data input 3
    input logic [1:0] sel,   // Select input
    output logic z           // Output
);

// Put your code here
// ------------------
	logic mux_up_res;
	logic mux_down_res;
	
    mux2 mux_up (.d0(d0),   .d1(d1), .sel(sel[0]),   .z(mux_up_res));

    mux2 mux_down (.d0(d2), .d1(d3), .sel(sel[0]), .z(mux_down_res));

    mux2 mux_right(.d0(mux_up_res), .d1(mux_down_res), .sel(sel[1]), .z(z));


// End of your code

endmodule
