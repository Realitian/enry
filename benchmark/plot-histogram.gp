#!/usr/bin/env gnuplot

set terminal png large font "arial,26" size 1920,1080
set output 'benchmark/histogram/distribution.png'

set datafile separator comma
set key under

set style data histogram
set style histogram clustered gap 1 title offset 1,1
set style fill solid noborder
set boxwidth 0.95
set grid y
set bmargin 12
set autoscale
set title "Number of files per processing time"

plot newhistogram, 'benchmark/csv/enry-distribution.csv' using 3:xtic(1) title "enry", 'benchmark/csv/linguist-distribution.csv' using 3 title "linguist"

unset output

