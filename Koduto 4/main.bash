#!/bin/bash
wget https://cyberplanet.tech/tthk/postgre.log
grep "LOG" postgre.log | sed 's/ EEST//g' | sed 's/\[[0-9]*\]//g' | sed 's/LOG:/LOGIN:/g' > raport.txt
