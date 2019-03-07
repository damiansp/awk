# Total and avg pay of employees making > $6.00/hr
$2 > 6 {
  n = n + 1
  pay = pay + $2 * $3
}
END {
  if (n > 0)
    print n, "employees, total pay is: $" pay "\nmean pay is $" pay/n
  else
    print "no employee is paid more the $6/hr"
}
         
