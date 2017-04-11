#!/bin/bash

cat data.txt | while read index number name age
do
    echo "index:${index}"
    echo "number:${number}"
    echo "name:${name}"
    echo "age:${age}"
    echo " "
done
