# Problem 7:
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?
# => 104743

limit = 10001

def prime?(n)
    (2..Math.sqrt(n)).each { |v| return false if n%v == 0 }
    return true
end

def next_prime(n)
    i = n
    while i < 2 * n
        i += 1
        return i if prime?(i)
    end
end

primes = Array[2]
while primes.length < limit
    n = primes.last
    primes << next_prime(n)
end

puts primes.last
