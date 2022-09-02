void main(List<String> args) {
  var target = 999; // Less than 1000

  //Multiples of 3 and 5;
  print(sumMultiplesOf(3, target) +
      sumMultiplesOf(5, target) -
      sumMultiplesOf(15, target));
}

//By keeping in mind that:
// (1+2+3+4+5...+n) = (n*(n+1)) / 2

BigInt sumMultiplesOf(var divisor, var target) {
  var div = (target / divisor).floor();
  return BigInt.from(divisor * (div * (div + 1)) / 2);
}
