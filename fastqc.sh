#!/usr/bin/env bash

#run fastq files through FASTQC

FASTQCDIR="/well/webber/users/reardon/apps/FastQC"

#format sample names
ls ./*.gz | sed -e 's/_[12].fastq.gz//g' | uniq > samples.txt


#make output dir
mkdir ./fastqc_out

#feed into fastqc
for i in `cat samples.txt`
do
  echo processing $i... >&2
  $FASTQCDIR/fastqc -o ./fastqc_out ${i}_1.fastq.gz ${i}_2.fastq.gz -t 8
done