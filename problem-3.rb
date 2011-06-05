# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?

class Integer
  
  def largest_pf(display_progress = false)
    count = 1
    (2...self).each do |i|
      return self / i if (self.divisible_by?(i) and (self / i).prime?)
    end
    raise "No prime factors"
  end
  
  def smallest_pf(display_progress = false)
    count = 1
    (2...self).each do |i|
      puts "[#{i}, #{self / i}]" if self.divisible_by? i
      return i if self % i == 0 and i.prime?
    end
    raise "No prime factors"
  end
  
  def prime?
    (2...self).each do |i|
      return false if self.divisible_by?(i)
    end
    return true
  end
  
  def divisible_by?(n)
    self % n == 0
  end
end

puts 600851475143.largest_pf