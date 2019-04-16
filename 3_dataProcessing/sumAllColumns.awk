# Print column sums for arbitrary no. of columns
# input: rows of numbers
# output: sum of each column
# (missing entries treated as 0)

{
  for (i = 1; i <= NF; i++) { sum[i] += $i }
  if (NF > maxfld) { maxfld = NF }
}
END {
  for (i = 1; i <= maxfld; i++) {
    printf("%g", sum[i])
    if (i < maxfld) { printf("\t") }
    else { printf("\n") }
  }
}
