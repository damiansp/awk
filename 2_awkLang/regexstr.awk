BEGIN {
  sign = "[+-]?"
  digits = "^[0-9]+$"
  decimal = "[0-9]+[.]?[0-9]*"
  fraction = "[.][0-9]+"
  exponent = "([eE]" sign "[0-9]+)?"
  number = "^" sign "(" decimal "|" fraction ")" exponent "$"
}
$2 ~ number { print $2 }
