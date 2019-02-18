# Run with
# awk -f employee.awk ../data/emp.txt 
$3 > 0 { print $1, $2 * $3 }
