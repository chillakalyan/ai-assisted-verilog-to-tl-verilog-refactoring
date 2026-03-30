\m5_TLV_version 1d: tl-x.org
\m

\SV
   m5_makerchip_module
\TLV

   /counter
      |pipe
         @0
            $reset = *reset;

         @1
            $count[3:0] = $reset ? 4'b0000 : >>1$count + 1;

   *passed = 1'b1;
   *failed = 1'b0;

\SV
   endmodule
