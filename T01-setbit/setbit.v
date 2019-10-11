module top (output led_green_out,
	       output led_red_out0,
	       output led_red_out1,
	       output led_red_out2,
	       output led_red_out3);

   wire led_green_out;
   wire led_red_out0;
   wire led_red_out1;
   wire led_red_out2;
   wire led_red_out3;


   assign led_green_out = 1;
   assign led_red_out0 = 0;
   assign led_red_out1 = 0;
   assign led_red_out2 = 0;
   assign led_red_out3 = 0;

endmodule
