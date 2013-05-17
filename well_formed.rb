module WellFormed
  def self.check str
    alphabet = {
      '[' => ']',
      '(' => ')',
      '{' => '}'
    }

    stack = []

    str.each_char do |char|
      if alphabet.keys.include? char
        stack.push char
      else
        return "False" unless alphabet[stack.pop] == char
      end
    end

    stack.empty? ? "True" : "False"
  end
end

 # File.open(ARGV[0]).each_line do |line|
 #     puts line
 #     puts WellFormed.check(line)
 # end