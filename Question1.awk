#! /usr/bin/awk
BEGIN {FS="\t"}
{a[$4]++}
END {print "What are the top 5 zip codes with the most car crashes, sorted from largest to smallest?"
     printf "%-10s %s\n", "Zip Code", "Number of Crushes"
     for (i in a)
       printf "%-10s %s\n", i, a[i] | "sort -k 2nr | head -5"}
