#!/bin/bash
# run trimmomatic to throw out bad sequences, trim when quality gets low, or if
# sequences are too short you will need to turn this into a for loop to process
# all of your files
for file in /data/my-illumina-sequences/trimmed/JI*.fastq
do
	echo Now running trimmomatic script
	TrimmomaticSE -threads 4 -phred33 /data/my-illumina-sequences/unzipped/JI*.fastq /data/my-illumina-sequences/trimmed/"$(basename -s .fastq "$file")".trim.fastq LEADING:5 TRAILING:5 SLIDINGWINDOW:8:25 MINLEN:14
	echo Done
done
