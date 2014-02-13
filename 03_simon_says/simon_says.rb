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
	string[0]=string[0].upcase
	string.split(' ')[0]
	return string
end
