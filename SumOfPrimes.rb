require 'mathn'

n = 1
x = Array.new
until x.length == 1000
	if n.prime?
		x << n
	end
	n += 1
end

d = x.inject(:+)
puts d