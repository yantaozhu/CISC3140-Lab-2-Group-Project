#! /usr/bin/awk
BEGIN {FS="\t"
       $2=substr($2,0,length($2)-3)}
{a[$2]++}
END {print "During what hour of the day are car crashes more likely to occur?"
     printf "%-15s %s\n", "Time", "Chance of Car Crush(in %)"
     for (i in a)
     printf "%-15s %.3f\n", i"-"substr(i,0,length($2)-2)":59", a[i]/(NR-1)*100 | "sort -k 2nr | head -5"}
