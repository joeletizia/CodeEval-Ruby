=begin
 Sample code to read in test cases:
File.open(ARGV[0]).each_line do |line|
end
=end

File.open(ARGV[0]).each_line do |line|
	args = line.split
	
	a = args[0].to_i
	b = args[1].to_i
	n = args[2].to_i
	
	(1..n).each do |x|
		if x%a == 0
			print 'F'
		end
		if x%b == 0
			print 'B'
		end
		
		if x%a != 0 && x%b !=0
			print x
		end
		
		print ' '
	end
	
	puts 
end