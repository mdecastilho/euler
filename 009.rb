# Problem 9:
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a² + b² = c²
# For example, 3² + 4² = 9 + 16 = 25 = 5².
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
# => 31875000

sum = 1000

def pythagorean?(a, b, c)
    a < b && b < c && a * a + b * b == c * c
end

def find_product(s)
    (3..(s - 3) / 3).each do |a|
        (a + 1..(s - 1 - a) / 2).each do |b|
            c = s - a - b
            return a * b * c if pythagorean?(a, b, c)
        end
    end
end

puts find_product(sum)
