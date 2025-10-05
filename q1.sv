
// File: alu_sequence_item.sv
// Description: Sequence Item for ALU verification


`ifndef ALU_SEQUENCE_ITEM_SV
`define ALU_SEQUENCE_ITEM_SV

// Import UVM package
import uvm_pkg::*;
`include "uvm_macros.svh"

//----------------------------------------------
// Class: alu_sequence_item
//----------------------------------------------
class alu_sequence_item extends uvm_sequence_item;

  // -------------------------
  // Variables
  // -------------------------
  rand logic rst;
  rand logic signed [31:0] A;   // Operand A
  rand logic [31:0] B;          // Operand B
  rand logic [2:0] Opcode;      // Operation Code

       logic [31:0] Result;     // DUT output
       logic Error;             // Error flag

  // -------------------------
  // UVM Utility Macros
  // -------------------------
  `uvm_object_utils_begin(alu_sequence_item)
    `uvm_field_int(rst,     UVM_ALL_ON)
    `uvm_field_int(A,       UVM_ALL_ON)
    `uvm_field_int(B,       UVM_ALL_ON)
    `uvm_field_int(Opcode,  UVM_ALL_ON)
    `uvm_field_int(Result,  UVM_ALL_ON)
    `uvm_field_int(Error,   UVM_ALL_ON)
  `uvm_object_utils_end

  // -------------------------
  // Constructor
  // -------------------------
  function new(string name = "alu_sequence_item");
    super.new(name);
  endfunction : new

endclass : alu_sequence_item

`endif
