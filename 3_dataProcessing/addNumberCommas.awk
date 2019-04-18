# Puts commas in large numbers
# input: a number per line
# output: the input number followe by the number with commas and 2 decimal
#         places
{ printf("%-12s %20s\n", $0, addcomma($0)) }

function addcomma(x, n) {
  if (x < 0) { return "-" addcomma(-x) }
  n = sprintf("%.2f", x)
  while (n ~ /[0-9][0-9][0-9][0-9]/) { sub(/[0-9][0-9][0-9][,.]/, ",&", n) }
  return n
}
