# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?

load "EulerExtensions.rb"

class Integer
  include EulerExtensions::EulerInteger
  
  def largest_pf
    (2...self).each { |i| return self / i if (self.divisible_by?(i) and (self / i).prime?) }
    raise "No prime factors. how in the hell?"
  end
end

puts 600851475143.largest_pf