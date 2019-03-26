BEGIN { FS = OFS = "\t" }
{
  $(NF + 1) = 1000 * $3 / $2
  print
}
