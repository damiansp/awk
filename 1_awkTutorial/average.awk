{ pay = pay + $2 * $3 }
END {
  print NR, "employees"
  print "total pay is $" pay
  print "mean pay is $" pay / NR
}
