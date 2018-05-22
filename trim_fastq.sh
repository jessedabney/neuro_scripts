#!/usr/bin/env bash

for i in `sed 's/\.\///g'
do
	trim_galore --fastqc_args '-t 8 -o ../../analysis/fastqc_out_trim' --retain_unpaired --paired ./${i}_1.fastq.gz ./${i}_2.fastq.gz