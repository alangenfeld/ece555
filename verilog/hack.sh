#!/bin/bash
 for i in {0..31}
 do
     echo "dff_en d$i(q[$i], d[$i], clk, en);" >> reg32.v
 done


