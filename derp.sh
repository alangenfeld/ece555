#!/bin/bash

for i in {0..31}
do
    echo "vZ<$i> Z<$i> 0 pwl 30n 0 31n 0 40n 0 41n 0 50n 0 51n 0 60n 0 61n 0" >> top.stim
done
