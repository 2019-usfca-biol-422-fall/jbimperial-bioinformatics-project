#!/bin/bash
# convert to fasta for BLAST
# you need to modify this to save the converted fasta file to a file
# instead of printing to the screen
# you'll need to turn this into a for loop too
for file in /data/my-illumina-sequences/trimmed/JI*.fastq
do
	echo Convert fastq to fasta file with bioawk
	bioawk -c fastx '{print ">"$name"\n"$seq}' "$file"  > /data/my-illumina-sequences/trimmed-fasta/JI-M3_S36_L001_R1_001.trim.fasta
	echo Done
done 
