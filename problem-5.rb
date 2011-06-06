load "Euler.rb"

#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#

class Integer
  include Euler::Integer
end

number = 1
until number.divisible_by? (1..20) do
  number += 1
end
puts number