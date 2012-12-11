=begin
 Sample code to read in test cases:
File.open(ARGV[0]).each_line do |line|
end
=end


(1..99).each do |x|
	unless x%2 == 0
		puts x
	end
end
