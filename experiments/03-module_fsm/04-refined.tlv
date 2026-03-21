
// Refined TL-Verilog
// Improvements:
// - Added reset handling
// - Fixed pipeline stage ordering
// - Added proper >> dependencies
// - Included cycle counter logic

\m5_TLV_version 1d: tl-x.org
\m5

\SV
   m5_makerchip_module
\TLV

   /fsm
      |pipe
         @0
            $reset = *reset;
            $cyc_cnt[31:0] = $reset ? 0 : >>1$cyc_cnt + 1;

         @1
            // State register
            $state[1:0] = $reset ? 2'd0 : >>1$next_state;

         @2
            // Next state logic
            $next_state[1:0] =
               ($state == 2'd0) ? 2'd1 :
               ($state == 2'd1) ? 2'd2 :
                                  2'd0;

         @3
            // Output logic
            $output_signal[1:0] = >>1$state;

   *passed = $cyc_cnt > 20;
   *failed = 1'b0;

\SV
   endmodule
