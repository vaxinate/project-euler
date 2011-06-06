module EulerExtensions
  module EulerInteger
    def prime?
      (2...self).each { |i| return false if self.divisible_by?(i) }
      return true
    end

    def divisible_by?(n)
      self % n == 0
    end
  end
end