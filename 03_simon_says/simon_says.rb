def echo(statement)
	return statement
end
def shout(statement)
	return statement.upcase
end
def repeat(statement,iter=2)
	repeat=statement
	iter=iter-1
	iter.times do
		repeat = repeat + (" " + statement)
	end
	return repeat
end
def start_of_word(word,number)
	word[0..number-1]
end
def first_word(statement)
	statement.split[0]
end
def titleize(statement)
	splitfirst=statement.split
	splitfirst.each do |i|
		if (i != "the") && (i != "and") && (i != "over")
			statement=statement.gsub(i,i.capitalize)
		end
	end
	statement=statement.sub(splitfirst[0],splitfirst[0].capitalize)
	return statement
end
puts titleize("war and peace")
