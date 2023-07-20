#!/bin/bash

cat ${1}.qmd | sed '/^ *$/d' > tempo

mv tempo ss

sed 's/\\#/\n#/g' ss > tempo

mv tempo ss

sed 's/\\\$\\\$/\n\$\$/g' ss > tempo

mv tempo ss

sed 's/\\\\/\\/g' ss > tempo

mv tempo ss

rm ${1}.*
rm -rf ${1}_files

mv ss ${1}.qmd



