/Asia/ { population["Asia"] += $3 }
/Europe/ { population["Europe"] += $3 }
END {
  print "Asian population is", population["Asia"], "million."
  print "European population is", population["Europe"], "million."
}
