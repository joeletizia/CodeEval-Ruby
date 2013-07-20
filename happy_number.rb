require 'pry'

class HappyNumberChecker
  def self.check(value)
    previous_results = []
    sum_of_squares = check_for_cycle(value)

    while true
      if sum_of_squares == 1
        return true
      else
        if previous_results.include?(sum_of_squares)
          return false
        end
        previous_results << sum_of_squares
        sum_of_squares = check_for_cycle(sum_of_squares)
      end
    end
  end

  private

  def self.separate_digits(int)
    int.to_s.split("").map do | value |
      value.to_i
    end
  end

  def self.square_digits(array_of_ints)
    array_of_ints.map do |digit|
      digit * digit
    end
  end

  def self.check_for_cycle(value)
    digits = separate_digits(value)
    squares = square_digits(digits)
    sum_of_squares = squares.inject { |sum, n| sum + n}
  end

end
