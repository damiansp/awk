# Print the largest 1st fiel and the line that contains it
$1 > max {
  max = $1
  maxline = $0
}
END { print max, maxline }
