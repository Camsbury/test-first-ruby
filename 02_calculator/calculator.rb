def add(a,b)
	a+b
end
def subtract(a,b)
	a-b
end
def sum(numbers)
	sum=0
	numbers.each {|i| sum=sum+i}
	return sum
end
def multiply(numbers)
	product=1
	for i in numbers
		product=product*i
	end
	return product
end
def power(a,b)
	a**b
end
def factorial(number)
	if number == 0
		return 1
	elsif number == 1
		return 1
	else
		fact=1;
		for i in (1..number).to_a.reverse do
			fact=fact*i
		end
		return fact
	end
end
