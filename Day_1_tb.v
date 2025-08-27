// A simple TB for mux

module day1_tb ();

  // Write your Testbench here...
  reg [7:0] a_i,b_i;
  reg sel_i;
  wire [7:0] y_o;
  
  day1 tb(.*);
  initial
    begin
      for (int i = 0; i < 10; i++) begin
      a_i   = $urandom_range (0, 8'hFF);
      b_i   = $urandom_range (0, 8'hFF);
      sel_i = $urandom_range(0,1);
      #5;
      end
    end
endmodule
