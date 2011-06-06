module Euler
  module Integer
    def prime?
      (2...self).each { |i| return false if self.divisible_by?(i) }
      return true
    end

    def divisible_by?(n)
      if n.class == Range
        n.each do |i|
          return false unless self % i == 0
        end
        return true
      end
      self % n == 0
    end
  end
end