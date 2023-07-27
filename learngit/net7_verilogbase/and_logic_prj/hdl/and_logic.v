// -----------------------------------------------------------------------------
// Copyright (c) 2014-2023 All rights reserved
// -----------------------------------------------------------------------------
// Author :youkaiyuan v3eduyky@126.com
// Wechat : 15921999232
// File   : and_logic.v
// Create : 2023-07-20 22:31:12
// Revise : 2023-07-20 22:31:16
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
`timescale  1ns/1ps
module and_logic
 (
	  input wire    key1, 
      input  wire   key2, 

      output wire   led 
); 

assign led = key1&key2; 

endmodule