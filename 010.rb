# Problem 10:
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.
# => 142913828922

LIMIT = 2000000

def prime_sieve(n)
    sieve = []
    for i in 2..n
        sieve[i] = i
    end
    for i in 2..Math.sqrt(n)
        next unless sieve[i]
        (i*i).step(n, i) do |j|
            sieve[j] = nil
        end
    end
    sieve.compact
end

puts prime_sieve(LIMIT).reduce(:+)
