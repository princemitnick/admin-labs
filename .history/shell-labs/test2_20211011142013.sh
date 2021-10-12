#!/bin/bash
while read input_text
echo "Please type a word : "
do
  case $input_text in
    hello)
        echo English ;;
    howdy)
        echo American ;;
    gday)
        echo Autralian ;;
    bonjour)
        echo French ;;
    "guten tag")
        echo German ;;
    *)
        echo Unkown Language: $input_text
  esac

done