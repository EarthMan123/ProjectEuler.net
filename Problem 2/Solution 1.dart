BigInt fibnum(int lastnum) {
  var f = BigInt.from(0), // => f = f
      d = BigInt.from(0), // => d = f(n-1)
      e = BigInt.from(1); // => e = f(n-2)

  // print('1 => F0 = 0\n2 => F1 = 1');

  for (var i = 2; i < lastnum; i++) {
    f = d + e;
    d = e;
    e = f;
    // print('${i + 1} => F$i = $f');
  }
  return f;
}

void main() {
  var sum = BigInt.zero;
  //Number = 40;
  for (var i = 1; i < 1000; i++) {
    var num = fibnum(i);
    if (num <= BigInt.from(4000000)) {
      if (num % BigInt.two == BigInt.zero) {
        sum += num;
      }
    } else
      break;
  }

  print(sum);
}
