#! /usr/bin/awk
BEGIN {FS="\t"}
{a[$19]++}
END {print "What is the top 3 contributing factor that leads to car crashes?"
     printf "%-60s %s\n", "Contrubting Factor", "Number of Cases"
     for (i in a)
       printf "%-60s %s\n", i, a[i] | "sort -k 2nr"}
