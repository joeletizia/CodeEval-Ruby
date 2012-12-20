

File.open(ARGV[0]).each_line do |line|
	unless line.include? ";"
		next
	end

	results = Hash.new
	dupe = nil
	split_line = line.split ";"
	length = split_line[0]
	elements = split_line[1].split ","

	elements.last.strip!

	elements.each do |e|
		#puts "checking #{e}"
		if results.has_key? e
			dupe = e
			#puts "found dupe"
			break
		else
			results[e] = 1
			#puts "#{results}"
		end
	end

	puts dupe
	
end
