module DoubleSquares
  def self.check n
    squares = []
    (0..Math.sqrt(n).to_i).each do |x|              # loop until sqrt, because it cant be bigger
      y2 = n - x*x
      if perfect_square?(y2)                                   # if y is an int, its a square
        squares.push Math.sqrt(y2) unless squares.include?(Math.sqrt(y2))
      end 
    end
    squares.count/2
  end

  def self.perfect_square? k
    Math.sqrt(k) == Math.sqrt(k).to_i
  end
end
