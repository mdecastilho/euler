# Problem 4:
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
# => 906609

a = 100
b = 999

def is_palindromic?(n)
    s = n.to_s
    return s == s.reverse
end

palindromics = Array.new
(a..b).each do |i| 
    (a..i).each do |j|
        p = i*j
        palindromics << p if is_palindromic?(p)
    end
end

puts palindromics.max
