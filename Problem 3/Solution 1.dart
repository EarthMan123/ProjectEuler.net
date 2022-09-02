import 'dart:math';

BigInt nextFactor(BigInt num) {
  var next = num + BigInt.one; //, limit = sqrt(num.toDouble()).ceil();

  if (!checkIfPrimeNumber(next)) next = next + BigInt.one;

  return next;
}

bool isPrime(BigInt num) {
  var limit = sqrt(num.toDouble()).ceil();

  if ((num).remainder(BigInt.two) == 0) return false;
  if ((num).remainder(BigInt.from(3)) == 0) return false;
  if ((num).remainder(BigInt.from(5)) == 0) return false;
  if ((num).remainder(BigInt.from(7)) == 0) return false;

  for (var i = 1; i < limit; i++) if (num % BigInt.from(i) == 0) return false;

  return true;
}

bool checkIfPrimeNumber(BigInt number) {
  var limit = sqrt(number.toDouble()).ceil();

  if (number == 2 || number == 3) {
    return true;
  } else if (number <= BigInt.one ||
      number % BigInt.two == 0 ||
      number % BigInt.from(3) == 0) {
    return false;
  }
  for (int i = 5; i * i <= limit; i += 6) {
    if (number % BigInt.from(i) == 0 || number % (BigInt.from(i + 2)) == 0) {
      return false;
    }
  }
  return true;
}

void main(List<String> args) {
  BigInt num = BigInt.parse('600851475143'),
      largestPrimeFactor = BigInt.two,
      primeNum = BigInt.two;

  while (num != BigInt.one && primeNum <= num) {
    if (num % primeNum == BigInt.zero) {
      num = num ~/ primeNum;
      largestPrimeFactor = primeNum;
      // primeNum = BigInt.two;
      print('$num : $largestPrimeFactor');
    } else
      primeNum = nextFactor(primeNum);

    // print(largest_prime_factor);
  }

  print(largestPrimeFactor);
}
