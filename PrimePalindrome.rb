require 'mathn'

def pallindrome?(n)
	if n.to_s.reverse == n.to_s
		true
	else
		false
	end
end

1000.downto(1) do |n|
	if pallindrome?(n) && n.prime?
		puts n
		break
	end
end