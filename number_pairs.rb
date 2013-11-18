require 'pry'

class NumberPairsFinder
  def initialize(input_set, sum)
    @input_set = input_set
    @sum = sum
  end

  def find_pairs
    pairs = []

    @input_set.each_with_index do | value, index |
      @input_set.each_with_index do |inner_value, inner_index|
        next if inner_index == index
        if inner_value + value == @sum
          pairs << [value, inner_value] if check_uniqueness([inner_value, value], pairs)
        end
      end
    end

    pairs.sort {|x,y| x.first <=> y.first }
  end

  private

  def check_uniqueness(pair, set)
    set.each do | pair_to_check |
      return false if unique_condition(pair, pair_to_check)
    end

    true
  end

  def unique_condition(pair1, pair2)
    (pair1[0] == pair2[0] || pair1[1] == pair2[0]) && 
      (pair1[1] == pair2[1] || pair1[0] == pair2[1])
  end
end
