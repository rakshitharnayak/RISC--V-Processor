module Instruction_Memory(rst,A,RD);

  input rst;
  input [31:0]A;
  output [31:0]RD;

  reg [31:0] mem [1023:0];
  
  assign RD = (~rst) ? {32{1'b0}} : mem[A[31:2]];

//   initial begin
//     $readmemh("memfile.hex",mem);
//   end



  initial begin
    //mem[0] = 32'hFFC4A303;
    //mem[1] = 32'h00832383;
    // mem[0] = 32'h0064A423;
    // mem[1] = 32'h00B62423;
    //mem[0] = 32'h0062E233;
    // mem[1] = 32'h00B62423;
     mem[0] = 32'h0062E233;   //OR  0000_0000_0110_0010_1110_0010_0011_0011   //F3 -110 ->OR   // OR X4,X5,X6
    mem[1] = 32'h00B67433;   //AND    0000_0000_1011_0110_0111_0100_0011_0011   //F3 -010 ->AND   // AND X8,X12,X11
    mem[2] = 32'h00B60933;   //ADD    0000_0000_1011_0110_0111_0100_0011_0011   //F3 -000 ->ADD   // ADD X8,X12,X11
    mem[3] = 32'h41390433;   //SUB    0100_0001_0011_1001_0000_0100_0011_0011   //F3 -000 ->SUB   // SUB X8,X18,X19
    mem[4] = 32'h015A4433;   //XOR    0000_0001_0101_1010_0100_0100_0011_0011   //F3 -100 ->XOR   // XOR X8,X21,X20
    mem[5] = 32'h017B2433;   //SLT    0000_0001_0111_1011_0010_0100_0011_0011   //F3 -010 ->SLT   // SLT X8,X23,X22


  end

endmodule
