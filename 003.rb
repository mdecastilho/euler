# Problem 3:
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
# => 6857

number = 600851475143 

def prime_factors(n)
    factors = Array.new
    i = 2
    while n > 1
        while n%i == 0
            factors << i
            n /= i
        end
        i += 1
    end
    factors
end

puts prime_factors(number).last
