#! /bin/bash
while :
do
nc -l 8086 > id.txt
tail execute$(cat id.txt).txt | nc -l 8080
> execute$(cat id.txt).txt
> id.txt
done
