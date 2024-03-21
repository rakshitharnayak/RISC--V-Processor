module Register_File(clk,rst,WE3,WD3,A1,A2,A3,RD1,RD2);

    input clk,rst,WE3;
    input [4:0]A1,A2,A3;
    input [31:0]WD3;
    output [31:0]RD1,RD2;

    reg [31:0] Register [31:0];

    always @ (posedge clk)
    begin
        if(WE3)
            Register[A3] <= WD3;
    end

    assign RD1 = (~rst) ? 32'd0 : Register[A1];
    assign RD2 = (~rst) ? 32'd0 : Register[A2];

    initial begin
      Register[5] = 32'h00000005;
        Register[6] = 32'h00000004;
        Register[11] = 32'h00000003;
        Register[12] = 32'h00000002;
      Register[18] = 32'h00000005;
      Register[19] = 32'h00000005;
      Register[20] = 32'h00000008;
      Register[21] = 32'h00000009;
      Register[22] = 32'h00000001;
      Register[23] = 32'h00000002;
        
    end

endmodule
