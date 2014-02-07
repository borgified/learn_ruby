def add(a, b)
	return a + b
end

def subtract(a,b)
	return a - b
end

def sum(array)
	total=0
	array.each { |x| total = total + x }
	return total
end

def multiply(array)
	product=1
	array.each { |x| product = product * x }
	return product
end

def power(a,b)
	if b == 0
		result = 1
	elsif b == 1
		result = a
	else
		result = a
		for i in (2..b)
			result = a * result
		end
	end
	return result
end

def factorial(a)
	if a == 0
		return 1
	end

	result = a
	while a > 1
		a = a - 1
		result = result * a
	end
	return result
end
