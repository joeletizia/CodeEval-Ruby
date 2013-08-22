require 'pry'

class Sudoku
  def initialize(row_length, puzzle)
    @row_length = row_length
    @puzzle = puzzle

    raise Exception unless [4,9].include? row_length
    @key_space = (1..@row_length).count
  end


  def valid?
    check_rows && check_columns && check_boxes
  end

  private

  def check_rows
    (0...@key_space).to_a.each do |row|
      return false unless @puzzle[0 + row * @key_space, @key_space].to_a.uniq.count == @key_space
    end

    true
  end

  def check_columns
    subset = []
    column_height = @key_space

    (0...@key_space).to_a.each do |first_square|
      (0...@key_space).to_a.each do |multiplier|
        subset << @puzzle[first_square + (column_height * multiplier)]
      end

      return false unless subset.uniq.count == @key_space
      subset = []
    end

    true
  end

  def check_boxes
    square_length = Math.sqrt(@key_space).to_i

    if @key_space = 4
      starting_positions = [0,2,8,10]
    else
      starting_positions = [0,3,6,27,30,33,54,57,60]
    end

    starting_positions.each do |start|
      box = Array.new

      (0...square_length).to_a.each do |row|
        @puzzle[start + @key_space * row, square_length].each do |square_to_add|
          box << square_to_add
        end
      end

      return false unless box.uniq.count == @key_space
    end

    true
  end
end
