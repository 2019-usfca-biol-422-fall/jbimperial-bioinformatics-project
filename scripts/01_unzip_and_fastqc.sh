#!/bin/bash

# A scrpt to unzip and run fastqc on a folder of fastq.gz
# Illumina sequence files

# Jacqueline Imperial
# October 30, 2019
# jbimperial@usfca.edu

# move the files t the unzipped directory
echo Copy files...
cp -v /data/my-illumina-sequences/raw/*.gz /data/my-illumina-sequences/unzipped

# unzip the files
echo Unzipping files...
gunzip /data/my-illumina-sequences/unzipped/*

# run fastqc and put output into outpur folder
echo Running fastqc
fastqc /data/my-illumina-sequences/unzipped/* --outdir=output/fastqc-results
