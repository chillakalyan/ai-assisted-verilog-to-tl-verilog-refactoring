|verilog_counter
    @0
        $reset = *reset;

    @1
        $count[3:0] = $reset ? 4'b0000 : >>1$count + 1;
