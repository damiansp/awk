#!/bin/bash

# print named fields fo each input line
# usage:  field n1 [n2 [n3 ...]] file1 [file2 [file3...]]

awk '
BEGIN {
  for (i = 1; ARGV[i] ~ /^[0-9]+$/; i++) {
    fld[++nf] = ARGV[i]
    ARGV[i] = ""    
  }
  if (i >= ARGC) { ARGV[ARGC++] = "-" }
}
{ for (i = 1; i <= nf; i++) { printf("%s%s", $fld[i], i < nf ? " " : "\n") } }
' $*
