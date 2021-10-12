#!/bin/bash

#for i in hello 1 * 2 goodbye
#do
#  echo "Looping ... i is set to $i"
#done

INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ]
do
  echo "Please type something in (bye to quit)"
  read INPUT_STRING
  echo "You typed: $INPUT_STRING"
done