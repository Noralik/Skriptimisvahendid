#!/bin/bash

wget https://cyberplanet.tech/tthk/postgre.log

# переменная
spect="postgre.log"

# сам скрипт
if [ -f "$spect" ]; then
    dateF=$(date +%F)
    archiv="varundus-$dateF.tar.gz"
    tar -czf "$archiv" "$spect"
    
    echo "Successful $archiv"
else
    echo "Error $spect Not Found"
fi
