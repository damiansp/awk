# Sums columns, but checks that each record has the same number of fields

NR == 1 { nfld = NF }
{
  for (i = 1; i <= NF; i++) { sum[i] += $i }
  if (NF != nfld) { print("Line " NR " has " NF " entries, expected " nfld) }
}
END {
  for (i = 1; i <= nfld; i++) { printf("%g%s", sum[i], i < nfld ? "\t" : "\n") }
}
