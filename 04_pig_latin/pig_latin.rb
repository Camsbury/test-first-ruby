def translate(statement)
	statement=statement.split
	newstatement=[]
	statement.each do |i|
		if i[0..2] == "squ"
			i = i[3..-1]+"squay"
		elsif (i[0] =~ /[^aeiou]/) && (i[1] =~ /[^aeiou]/) && (i[2] =~ /[^aeiou]/)
			i = i[3..-1]+i[0..2] + "ay"
		elsif i[0..1] == "qu"
			i = i[2..-1] + "quay"
		elsif (i[0] =~ /[^aeiou]/) && (i[1] =~ /[^aeiou]/)
			i = i[2..-1] + i[0..1] + "ay"
		elsif i[0] =~ /[^aeiou]/
			i = i[1..-1] + i[0] + "ay"
		else
			i = i + "ay"
		end
		newstatement.push(i)
	end
	newstatement.join(' ')
end
