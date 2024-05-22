module decoder_tb();

wire [7:0] out;
reg  [2:0] in;

Three_to_Eight_Decoder d1 (.out(out), .in(in));

initial begin
$monitor(" in = %b && out = %b \n" , in, out);

in = 3'b000;

#10
in = 3'b001;

#10
in = 3'b010;

#10
in = 3'b011;

#10
in = 3'b100;

#10
in = 3'b101;

#10
in = 3'b110;

#10
in = 3'b111;
end

endmodule