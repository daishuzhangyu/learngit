// -----------------------------------------------------------------------------
// Copyright (c) 2014-2023 All rights reserved
// -----------------------------------------------------------------------------
// Author :youkaiyuan v3eduyky@126.com
// Wechat : 15921999232
// File   : tb_and_logic.v
// Create : 2023-07-20 22:32:56
// Revise : 2023-07-20 22:37:26
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
`timescale  1ns/1ps
module tb_and_logic();

	reg			key1;
	reg          key2;
	wire        led;

	always #15 key1  <= {$random}%2;
	always #10 key2 <= {$random}%2;

	and_logic  and_logic_inst
 (
	  .key1(key1), 
      .key2(key2), 

      .led(led)
); 

endmodule 