smallest_multiple <- function(greatest_divisor){
    is.smallest = F
    smallest <- 0
    divisors <- seq(greatest_divisor)
    while(!is.smallest){
        is.smallest = T
        smallest <- smallest + 1
        for(divisor in divisors){
            is.smallest <- is.smallest && smallest %% divisor == 0
        }
    }
    smallest
}

print(smallest_multiple(1) == 1)
print(smallest_multiple(2) == 2)
print(smallest_multiple(3) == 6)
print(smallest_multiple(4) == 12)
print(smallest_multiple(5) == 60)
print(smallest_multiple(10) == 2520)
print(smallest_multiple(20))

