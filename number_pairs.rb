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

class InputDeconstructor
  attr_accessor :set, :sum

  def initialize(input)
    data = input.split(";")
    string_set = data[0].split(",") || []

    @sum = data[1].to_i
    @set = string_set.collect{ |x| x.to_i }
  end
end

class OutputFormatter
  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def format
    if input.empty?
      "NULL"
    else
      output = ""
      input.each do |pair|
        output << "#{pair[0]},#{pair[1]};"
      end

      output.gsub(/;$/,'')
    end
  end
end

begin
  File.open(ARGV[0]).each_line do |line|
    input_deconstructor = InputDeconstructor.new(line)
    set = input_deconstructor.set
    sum = input_deconstructor.sum

    pairs = NumberPairsFinder.new(set, sum).find_pairs

    output = OutputFormatter.new(pairs).format

    puts output
  end
end
