
module assgn2(input wire clk, input wire[3:0] duty,output reg V);

reg[26:0] delay;



	always@(posedge clk) begin
	delay = delay+1;
		if(delay==10000)
		begin
		delay = 0;
		end
		if(delay<(duty*1000)) begin
			V = 1;
			end
		else
		begin
			V = 0;
		end
	end
endmodule
