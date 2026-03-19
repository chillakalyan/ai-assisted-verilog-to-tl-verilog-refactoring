
|alu_pipeline
    @0
        $reset = *reset;
        $cyc_cnt[31:0] = $reset ? 0 : >>1$cyc_cnt + 1;

    @1
        $a[31:0] = $cyc_cnt;
        $b[31:0] = $cyc_cnt + 32'd5;
        $opcode[2:0] = $cyc_cnt[2:0];

    @2
        $opcode_s1[2:0] = >>1$opcode;
        $add[31:0] = $a + $b;
        $sub[31:0] = $a - $b;
        $and_op[31:0] = $a & $b;
        $or_op[31:0]  = $a | $b;
        $xor_op[31:0] = $a ^ $b;

    @3
        $result[31:0] =
            $opcode_s1 == 3'b000 ? $add :
            $opcode_s1 == 3'b001 ? $sub :
            $opcode_s1 == 3'b010 ? $and_op :
            $opcode_s1 == 3'b011 ? $or_op  :
                                   $xor_op;
