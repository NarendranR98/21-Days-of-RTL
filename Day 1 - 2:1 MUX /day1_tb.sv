// A simple TB for mux

module day1_tb ();
  reg  [7:0] a_i, b_i;
  reg        sel_i;
  wire [7:0] y_o;
  
  day1 dut (.a_i(a_i), .b_i(b_i), .sel_i(sel_i), .y_o(y_o));
  
  initial begin
     // starting the test
    int count = 1'b0;
    a_i = 8'hBA; b_i = 8'h55; sel_i = 1; #10; 
    if(y_o == a_i) begin count++; end
    else $display("Test Case 1 Failed : Expected = %0h  || Actual = %0h",a_i,y_o);
    sel_i = 0;                           #10; 
    if(y_o == b_i) begin count++; end
    else $display("Test Case 2 Failed : Expected = %0h  || Actual = %0h",b_i,y_o);
    a_i = 8'h0F; b_i = 8'h3F; sel_i = 1; #10; 
    if(y_o == a_i) begin count++; end
    else $display("Test Case 3 Failed : Expected = %0h  || Actual = %0h",a_i,y_o);
    sel_i = 0;                           #10; 
    if(y_o == b_i) begin  count++; end
    else $display("Test Case 1 Failed : Expected = %0h  || Actual = %0h",b_i,y_o);
    
    if(count==4) begin
      $display("All Test Cases Passed!");
    end
    else $display("Please check your design!");
    
    $finish; 
  end
  
  

endmodule
