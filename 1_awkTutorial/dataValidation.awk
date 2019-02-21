NF != 3   { print $0, "no. fields not 3" }
$2 < 3.35 { print $0, "rate is below min. wage" }
$2 > 10   { print $0, "rate exceeds $10/hr" }
$3 < 0    { print $0, "error: negative hours worked" }
$3 > 60   { print $0, "error: too many hours worked" }
