module top (clk_in, led_green_out, led_red_out0, led_red_out1, led_red_out2, led_red_out3);
    input clk_in;
    output led_green_out;
    output led_red_out0;
    output led_red_out1;
    output led_red_out2;
    output led_red_out3;

    reg [23:0] counter;
    // placement comments for LEDs assume the iCEstick
    // is plugged into the left side of my laptop
    assign led_red_out1 = 0; // top
    assign led_red_out3 = 0; // bottom

//
// James T-bird
//   <<< >>>
// 0 000 000
// 1 001 100
// 2 011 110
// 3 111 111
//
// right turn >>>
    assign led_red_out2  = counter[23];     // left
    assign led_green_out = &counter[23:22]; // middle
    assign led_red_out0  = &counter[23:21]; // right

// left turn <<<
//    assign led_red_out2  = &counter[23:21]; // left
//    assign led_green_out = &counter[23:22]; // middle
//    assign led_red_out0  = counter[23];     // right

    always @ (posedge clk_in) begin
        counter <= counter + 1;
    end

endmodule