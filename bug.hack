function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

//The above code will result in a stack overflow error if x is a large number, because it recursively calls itself many times.
//This is because the stack is a finite resource, and too many recursive calls can exhaust it. This is a common issue in recursive programming, but is often missed by developers.
//Here's an example of how to fix the code using iteration instead:

function foo(x: int): int {
  var result: int = 1;
  for (var i: int = 1; i <= x; i++) {
    result *= i;
  }
  return result;
}