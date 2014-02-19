def echo(string)
	return string
end

def shout(string)
	return string.upcase
end

def repeat(string,num=2)
		string = "#{string} " * num 
		string[-1] = ''
	return string
end

def start_of_word(string,num)
	return string[0,num]
end

def first_word(string)
	return string.split(' ')[0]
end

def titleize(string)
	result = string.split(' ').each do |x|
		if (x == "and" or x == "the" or x == "over")
		else
				x[0]=x[0].upcase
		end
	end
	result.first.capitalize!
	return result.join(' ')
end
