#!/bin/bash

# a script to count the number of
# sequences in a set of gzipped fastq
# files

# Jacqueline Imperial
# October 29, 2019
# jbimperial@usfca.edu

# count the number of sequences using
# zgrep
zgrep -c "^+$" /iseq/JI*


