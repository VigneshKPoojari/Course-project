module courseproject_tb;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	courseproject uut (
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 1;
		
        
		// Add stimulus here

	end
      
endmodule
