require 'pry'

class NumberPairsFinder
  def initialize(input_set, sum)
    @input_set = input_set
    @sum = sum
  end

  def find_pairs
    pairs = []
    count = 0

    until @input_set.empty?
      comparator = @input_set.delete_at(0)

      @input_set.each_with_index do | value, index |
        if comparator + value == @sum
          pairs << [comparator, value]
        end
      end
    end

    pairs
  end

end
