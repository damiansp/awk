{ print max(0, max($2, $3)) }

function max(m, n) {
  return m > n ? m : n
}
