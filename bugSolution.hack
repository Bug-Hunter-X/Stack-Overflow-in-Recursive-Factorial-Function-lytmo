function foo(x: int): int {
  var result: int = 1;
  for (var i: int = 1; i <= x; i++) {
    result *= i;
  }
  return result;
}

function main(): void {
  echo foo(5);
}
//This iterative solution is significantly more efficient and avoids stack overflow errors.