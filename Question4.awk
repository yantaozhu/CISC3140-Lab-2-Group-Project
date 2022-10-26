#! /usr/bin/awk
BEGIN {FS="\t"}
$12~/^[0-9]+$/{a[$12]++}
END {print "What is the frequency of the number of deaths in car crashes?"
     printf "%-18s %-24s %s\n", "Number of Death", "Frequncy(out of " NR-1 ")", "Frequency(in %)"
     for (i in a)
     printf "%-18s %-24.0f %.5f\n", i, a[i], a[i]/(NR-1)*100 | "sort -k 2nr"}
