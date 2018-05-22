#!/usr/bin/env bash

#make table with filename and number of sequences

for i in `ls ../../data/fastq/*.gz` 
do
  echo processing $i... >&2
  echo -ne $i'\t'; bioawk -cfastx 'END{print NR}' $i
done

