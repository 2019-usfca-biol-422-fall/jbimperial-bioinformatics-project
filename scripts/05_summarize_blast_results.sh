#!/bin/bash
# use cut, sort, and uniq -c to help you summarize the results from the
# BLAST search.
for file in /data/my-illumina-sequences/blast_output/*.csv
do
	echo summarizing BLAST
	cut -d, -f1 $file | sort | uniq -c | sort -n > /data/my-illumina-sequences/blast_results_summary/$(basename -s .csv $file)_summary.csv
	echo Done
done
