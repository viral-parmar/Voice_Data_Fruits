#!/bin/bash 
echo $PWD
for i in *.opus; do ffmpeg -i "$i" -ar 16000 "${i%.*}.wav";done
rm *.opus
for file in *.wav; do sox "$file" "${file%.*}_s.wav" silence 1 0.1 1% reverse silence 1 0.1 1% reverse; done
rm PTT-*[0-9].wav




