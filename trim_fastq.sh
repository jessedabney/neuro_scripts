#!/usr/bin/env bash

for i in `sed 's/\.\///g' ./samples.txt`
do
  echo processing ${i}... >&2      
  trim_galore --fastqc_args '-t 8 -o ../../analysis/fastqc_out_trim' --retain_unpaired --paired ./${i}_1.fastq.gz ./${i}_2.fastq.gz
done
