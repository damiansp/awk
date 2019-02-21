# Run with
# awk -f employee.awk ../data/emp.txt 
{ printf("Total pay for %s is %.2f\n", $1, $2 * $3 ) }
