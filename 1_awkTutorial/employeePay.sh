awk '$3 > 0 { print $1, $2 * $3 }' ../data/emp.txt

# $3 > 0 : match every line where 3rd field > 0

echo Employees who did not work this week:
awk '$3 == 0 { print $1 }' ../data/emp.txt
