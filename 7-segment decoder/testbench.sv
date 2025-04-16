module test;

  reg [3:0] hex;
  wire [6:0] seg;

  hex_7seg_display_decoder uut (
    .hex(hex),
    .seg(seg)
  );

  integer i; // separate loop variable

  initial begin
    $display("HEX | 7 SEGMENTS");
    $display("----+-----------");
    for (i = 0; i < 16; i++) begin
      hex = i[3:0]; // assign integer to hex
      #10;
      $display(" %h  | %b", hex, seg);
    end
    $finish;
  end

endmodule
