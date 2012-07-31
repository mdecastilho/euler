# Problem 4:
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
# => 906609

def palindromic?(n)
    n.to_s == n.to_s.reverse
end

palindromics = Array.new
a = 100
b = 999
(a..b).each do |i| 
    (a..i).each do |j|
        p = i * j
        palindromics << p if palindromic?(p)
    end
end

puts palindromics.max
