# Run with
# awk -f employee.awk ../data/emp.txt 
{ printf("%-8s $%6.2f\n", $1, $2 * $3 ) }
