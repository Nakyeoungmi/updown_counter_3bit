module updown_counter_3bit(
  input clk, rst, up_down,
  output reg [2:0] q
);

  always @(posedge clk or negedge rst) begin
    if(!rst)
      q<=3'b000;
    else if(up_down)
      q<=q+1'b1;
    else
      q<=q-1'b1;
  end
endmodule
