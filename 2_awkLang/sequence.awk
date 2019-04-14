# input args: p [q [r]]; p <= q, r > 0
# outputs: 1, 2, ...p; p; or p + 1, ... q - 1, q; or p, p + r, p + 2r ... q
BEGIN {
  if (ARGC == 2) {
    for (i = 1; i < ARGV[1]; i++) { print i }
  } else if (ARGC == 3) {
    for (i = ARGV[1]; i <= ARGV[2]; i++) { print i }
  } else if (ARGC == 4) {
    for (i = ARGV[1]; i <= ARGV[2]; i += ARGV[3]) { print i }
  }
}
