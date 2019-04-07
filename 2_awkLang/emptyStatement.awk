# Print all lines containing an empty field
BEGIN { FS = "\t" }
{
  for (i = 1; i <= NF && $i != ""; i++) ; # <- empty
  if (i <= NF) print
}
