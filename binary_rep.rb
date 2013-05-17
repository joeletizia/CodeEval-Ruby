module Binary
  def self.convert n
    ret = Array.new(n/2.to_i + 1)

    while n > 0
      if n%2 == 0
        ret.push '0'
      else
        ret.push '1'
      end
      n /= 2
    end
    ret.reverse.join ''
    
  end
end

# File.open(ARGV[0]).each_line do |line|
#     Binary.convert line
# end