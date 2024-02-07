`timescale 1ns / 1ps
module tb ();

   logic [3:0] A,B;
   logic Cin;
   logic [4:0] Sum;
   logic [4:0] Sum_correct;
   
   logic  clk;   
   logic [31:0] errors;
   logic [31:0] vectornum;

	integer handle3;
	integer desc3;
	integer i,j,k;

	silly dut(A, B, Cin, Sum);

	assign Sum_correct = A + B + Cin;

 ////////////////////////////////////////////////////////////////////
   // 20 ns clock
   initial 
     begin	
	clk = 1'b1;
	forever #5 clk = ~clk;
     end


   initial
     begin
    
		for(j=0; j<4; j=+1)
			begin
				for (i=0; i<4; i=i+1)
					begin
						@(possedge clk)
							begin
								A = $random;
								B = $random;
								Cin = $random;
							end
						@(possedge clk)
							begin
								vectornum = vectornum +1;
								if(Sum != Sum_correct)
									begin
										errors = errors +1;
										$display("Error: %h %h || %h != %h", A, B, Sum, Sum_correct);

     end

   
endmodule
