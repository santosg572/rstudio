#!/bin/bash

cp p3.qmd temporal
cp temporal entrada

rm -rf p3*

python conver.py

sed 's/\\\\/\\/g' salida > salida2
sed 's/\\^/^/g' salida2 > salida
sed 's/\\_/_/g' salida > salida2
sed 's/\\\[/\[/g' salida2 > salida
sed 's/\\\]/]/g' salida > salida2

cp salida2 p3.qmd
