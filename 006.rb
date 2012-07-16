# Problem 6:
# The sum of the squares of the first ten natural numbers is, 1² + 2² + ... + 10² = 385
# The square of the sum of the first ten natural numbers is,(1 + 2 + ... + 10)² = 55² = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
# => 25164150

@limit = 100

def sum_of_squares
    (1..@limit).reduce { |sum, v| sum += v * v }
end

def square_of_sum
    sum = (1..@limit).reduce(:+)
    sum * sum
end

puts (sum_of_squares - square_of_sum).abs