#!/bin/bash 
echo $PWD
for file in *.wav; do sox "$file" "${file%.*}_s.wav" silence 1 0.1 1% reverse silence 1 0.1 1% reverse; done
rm My_*[0-9].wav
/usr/bin/praat --run /home/viral/testspect.praat $PWD





