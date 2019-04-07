BEGIN { FS = "\t" }
{ population[$4] += $3 }
END {
  for (region in population) print region, population[region]
}
