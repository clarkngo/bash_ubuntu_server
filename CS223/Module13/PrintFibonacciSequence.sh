#! /bin/bash
#: Title: printFibonacciSequence - Print out a Fibonacci sequence
#: Synopsis: printFibonacciSequence SEQUENCE
#: Date: 2019-07-21
#: Version: 1.0
#: Author: Clark N.
#: Options: null

printFibonacciSequence() { #@ DESCRIPTION: print a Fibonacci sequence
  first=0		   #@ USAGE: printFibonacciSequence SEQUENCE
  second=1
  echo 'The Fibonacci sequence is: '
  for (( i=0; i<$1; i++ ))
  do 
    echo -n "$first "
    fn=$((first + second))
    first=$second
    second=$fn
  done
  echo ''
}
