function is_prime(number, primes)
    local i = 1
    while primes[i] <= math.sqrt(number) do
        if number % primes[i] == 0 then
            return false
        end
        i = i + 1
    end
    return true
end

function prime(n)
    local number = 1
    local primes = {2}
    while #primes <= n do
        number = number + 1
        if is_prime(number, primes) then
            table.insert(primes, number)
        end
    end
    return number
end

assert(prime(1) == 2, prime(1))
assert(prime(2) == 3)
assert(prime(3) == 5, prime(3))
assert(prime(4) == 7)
assert(prime(5) == 11)
assert(prime(6) == 13)
assert(prime(100) == 541)
print(prime(10001))
