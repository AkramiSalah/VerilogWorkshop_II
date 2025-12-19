// 4->1 multiplexer test bench template
module mux4_test;

// Put your code here
// ------------------
logic d0;
logic d1;
logic d2;
logic d3; 
logic [1:0] sel;
logic z;

mux4 tester (
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .sel(sel),
    .z(z)
);

initial begin
    d0 = 1'b0;
    d1 = 1'b0;
    d2 = 1'b0;
    d3 = 1'b0;
    sel = 2'b00;
    #32;
    d0 = 1'b1;

    #32;
    d0 = 1'b0;

    #32;

end




// End of your code

endmodule
