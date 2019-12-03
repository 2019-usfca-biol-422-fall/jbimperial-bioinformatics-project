#!/bin/bash
# run trimmomatic to throw out bad sequences, trim when quality gets low, or if
# sequences are too short you will need to turn this into a for loop to process
# all of your files
for untrimmed_fastq_files in /data/my-illumina-sequences/unzipped/JI*.fastq
do
	echo Now processing "$untrimmed_fastq_files"
	TrimmomaticSE -threads 4 -phred33 "$untrimmed_fastq_files" /data/my-illumina-sequences/trimmed/"$(basename -s .fastq "$untrimmed_fastq_files")".trim.fastq LEADING:5 TRAILING:5 SLIDINGWINDOW:8:25 MINLEN:14
	echo Done
done
