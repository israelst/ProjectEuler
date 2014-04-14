
def even_fib(upper_bound):
    s, a, b = 0, 1, 2
    while b <= upper_bound:
        if b % 2 == 0:
            s += b
        a, b = b, a + b
    return s

assert even_fib(3) == 2
assert even_fib(8) == 10
assert even_fib(21) == 10
assert even_fib(34) == 44
assert even_fib(55) == 44
assert even_fib(4000000) == 4613732

