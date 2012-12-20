File.open(ARGV[0]).each_line do |line|
	lists = line.split ";"
	list1 = lists[0].split ","
	list2 = lists[1].split ","

	intersections = Array.new

	puts list1.join ","
	puts list2.join ","
	until list1.length == 0
		puts "ITERATION"
		if list1.first.to_i == list2.first.to_i
			puts list1.first + " is equal to than " + list2.first
			puts "load " + list2.first
			intersections << list1.first
			puts "delete " + list1.first
			list1.delete list1.first
			puts "delete " + list2.first
			list2.delete list2.first
		else
			if list1.first.to_i > list2.first.to_i
				puts list1.first + " is greater than " + list2.first
				puts "delete " + list2.first
				list2.delete list2.first
			else
				puts list1.first + " is less than " + list2.first
				puts "delete " + list1.first
				list1.delete list1.first
			end
		end
	end

	puts intersections.join ","
end
