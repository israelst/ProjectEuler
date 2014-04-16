/*
 * I could not use Sieve of Eratosthenes due JS memory (or programmer
 * knowledge) limit.
 */

function divisors(n){
    var div = [];
    for(var i = 1; i <= Math.sqrt(n); i++){
        if(n % i == 0){
            div.push(i);
            div.push(n / i);
        }
    }
    return div.sort(function(a, b){return a - b});
}

function lpf(n){
    var d = divisors(n);
    d.shift();
    for(var i = d.length - 1; i >= 0; i--){
        for(var j = 0; j <= i; j++){
            if(d[i] % d[j] == 0){
                break;
            }
        }
        if(j == i)
            return d[i];
    }
}

test(lpf(2), 2);
test(lpf(3), 3);
test(lpf(4), 2);
test(lpf(6), 3);
test(lpf(5), 5);
test(lpf(10), 5);
test(lpf(7), 7);
test(lpf(23), 23);
test(lpf(91), 13);
test(lpf(13195), 29);
test(lpf(60085147), 1397329);
test(lpf(600851475143), 6857);

function test(a, b){
    if(a == b){
        console.log('.');
    }else{
        console.error(a, b);
    }
}

