def isvowel(c)
	vowels = ["a","e","i","o","u"]
	return vowels.include?(c)
end


def translate2(x)
	result=""
	x.split(' ').each do |s|

		if (s.split('')[0] == "q") && (s.split('')[1] == "u")
			s = s + "quay"
			s[0]=''
			s[0]=''
		elsif isvowel(s.split('').first)
			s = s + "ay"
		elsif (!isvowel(s.split('')[0]) and !isvowel(s.split('')[1]) and !isvowel(s.split('')[2]) )
			a = s.split('')[0]
			b = s.split('')[1]
			c = s.split('')[2]
			s = s + a + b + c + "ay"
			s[0]=''
			s[0]=''
			s[0]=''
		elsif (!isvowel(s.split('')[0]) and !isvowel(s.split('')[1]))
			a = s.split('')[0]
			b = s.split('')[1]
			s = s + a + b + "ay"
			s[0]=''
			s[0]=''
		else
			a = s.split('').first
			s = s + a + "ay"
			s[0]=''
		end
		result = result + s + ' '
	end
	result[-1]=''
	return result
end

def translate(string)
	result=""
	string.split(' ').each do |word|
		if isvowel(word[0])
			result = result + word + "ay"
		else
			qdetected=0
			word.split('').each do |letter|
				if "#{letter}" == "q"
					qdetected=1
				end
				if ((qdetected == 1) && ("#{letter}" == "u"))
					qdetected=0
					word = word + "u"
					word[0]=''
				elsif !isvowel("#{letter}")
					word = word + "#{letter}"
					word[0]=''
				else
					break
				end
			end
			result = result + word + "ay"
		end
		result = result + ' '
	end
	result[-1]=''
	return result
end
