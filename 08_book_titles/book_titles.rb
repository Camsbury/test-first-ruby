def title
	splitfirst=statement.split
	splitfirst.each do |i|
		if (i != "the") && (i != "a") && (i != "an") && (i != "and") && (i != "of") && (i != "in")
			statement=statement.gsub(i,i.capitalize)
		end
	end
	statement=statement.sub(splitfirst[0],splitfirst[0].capitalize)
	return statement
end
