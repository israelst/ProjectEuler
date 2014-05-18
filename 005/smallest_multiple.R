smallest_multiple <- function(greatest_divisor){
    divisors <- seq(greatest_divisor)
    factors <- c(1)
    for(divisor in divisors){
        for(factor in factors){
            if(divisor %% factor == 0){
                divisor <- divisor / factor
            }
        }
        factors <- append(factors, divisor)
    }
    prod(factors)
}

print(smallest_multiple(1) == 1)
print(smallest_multiple(2) == 2)
print(smallest_multiple(3) == 6)
print(smallest_multiple(4) == 12)
print(smallest_multiple(5) == 60)
print(smallest_multiple(6) == 60)
print(smallest_multiple(7) == 420)
print(smallest_multiple(10) == 2520)
print(smallest_multiple(20))

