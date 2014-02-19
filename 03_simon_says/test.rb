#!/usr/bin/env ruby


a = "a bc and aa".split(' ').each do |x|
	if x == "and"
	else
		x[0]=x[0].upcase
	end
end

b = "my string"

puts b.split(' ')[0]
