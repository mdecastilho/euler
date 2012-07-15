# Problem 3:
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
# => 6857

number = 600851475143 

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

prime_factors = prime_sieve(Math.sqrt(number)).select { |v| number%v == 0 }
puts prime_factors.last
