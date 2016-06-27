#!/bin/bash

for i in [`seq 1 $2`]; do
   dd if=/dev/zero of=$3/arquivo$i bs=1M count=$1 conv=fdatasync 2>> resultadosGravacao
   rm $3/arquivo$i
done

sed -i '/registros/d' resultadosGravacao
