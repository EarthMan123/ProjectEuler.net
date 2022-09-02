// Solution 1:
let sum = 0;

for (let i = 2; i < 1000; i++) {
    if (i % 3 == 0 || i % 5 == 0)
        sum += i;
}

console.log(sum)

function isNatural(num) {
    const sqrt = Math.floor(Math.sqrt(num));
    console.log(sqrt)
    for (let j = 2; j < sqrt; j++)
        if (num % j == 0)
            return false;
    return true;
}