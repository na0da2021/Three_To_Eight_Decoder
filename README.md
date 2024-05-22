# 3-to-8 Decoder Verilog Implementation

## Overview
This repository hosts the Verilog code for a 3:8 decoder. The decoder is a combinational circuit that converts a 3-bit binary input into one of eight outputs, enabling the selection of one out of eight channels.

## Module Description
The `Three_to_Eight_Decoder` module takes a 3-bit input `in` and produces an 8-bit output `out`. Each bit in the output corresponds to one of the eight decoded lines, which are set high based on the input combination.

## Code
```verilog
module Three_to_Eight_Decoder(output reg [7:0] out, input [2:0] in);
  
  always @(*) begin
    case(in)
      3'b000: out = 8'b00000001;
      3'b001: out = 8'b00000010;
      3'b010: out = 8'b00000100;
      3'b011: out = 8'b00001000;
      3'b100: out = 8'b00010000;
      3'b101: out = 8'b00100000;
      3'b110: out = 8'b01000000;
      3'b111: out = 8'b10000000;
      default: out = 8'bxxxxxxxx;
    endcase
  end
  
endmodule
```
## How to Use
1. Clone this repository to your local machine.
2. Include the `Three_to_Eight_Decoder.v` file in your project directory.
3. Instantiate the module in your top-level design.
4. Connect the `in` and `out` ports to your system as needed.

## Simulation
Run the included testbench with your preferred simulation tool to verify the functionality of the decoder.

## Contributing
Feel free to fork this project and contribute by submitting a pull request with your improvements.

## Acknowledgments
- A shoutout to all the digital design enthusiasts and the open-source community.

## About The Author
Author: Nada Omar

Email: na0da2021@gmail.com

Education: Electronics and communication department.

College: Faculty of Engineering, Alexandria university, Egypt.
