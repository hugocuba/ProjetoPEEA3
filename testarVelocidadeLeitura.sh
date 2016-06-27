#!/bin/bash

for i in [`seq 1 $2`]; do
   dd if=$3/arquivo of=/dev/null bs=1M count=$1 2>> resultadosLeitura
done

sed -i '/registros/d' resultadosLeitura
