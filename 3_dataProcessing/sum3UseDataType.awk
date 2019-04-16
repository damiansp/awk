# sum3: print sums of numeric columns
# input: rows of int and strings
# output: sums of numeric columns
# (assumes every line has the same layout)
NR == 1 {
  nfld = NF
  for (i = 1; i <= NF; i++) { ncol[i] = isnum($i) }
  # isnum not defined on local awk installation
}

{
  for (i = 1; i <= NF; i++) {
    if (ncol[i]) { sum[i] += $i }
  }
}

END {
  for (i = 1; i <= nfld; i++) {
    if (ncol[i]) { printf("%g", sum[i]) }
    else { printf("--") }
    printf(i < nfld ? "\t" : "\n")
  }
}
