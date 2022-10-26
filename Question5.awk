#! /usr/bin/awk
BEGIN {FS="\t"
       OFS="\t\t"}
$1~/2021/{if($3!="")
           {a[$3]++} }
END {print "What is the average number of car crashes per month in each borough in 2021?"
     printf "%-15s %s\n", "Borough", "Crush per Month"
     for (i in a)
     printf "%-15s %.0f\n", i, a[i]/12 | "sort -k 2nr"
}
