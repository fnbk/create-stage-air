#!/bin/bash

starts=(196608 205312 223232 241152 259072 266752 275968 286720 300851)

for i in ${!starts[@]}; do
this=${starts[$i]}
next=${starts[$i+1]}
if [[ ! -z $next ]]; then
    size=$(expr $next - $this)
    echo $size
    dd if=app.bin of=$i.mp3 skip=$this count=$size bs=1
fi
done

mp3gain -g -99 *.mp3

unset 'starts[${#starts[@]}-1]'

for i in ${!starts[@]}; do
  this=${starts[$i]}
  dd if=$i.mp3 of=app.bin seek=$this obs=1 conv=notrunc
done
