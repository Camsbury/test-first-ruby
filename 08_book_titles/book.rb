class Book
	attr_reader :title
	
	def title=(statement)
		splitfirst=statement.split
		splitfirst.each do |i|
			i.capitalize! unless exception?(i)
		end
		splitfirst[0].capitalize!
		@title=splitfirst.join(" ")
	end

	def exception?(word)
		exceptions = ["the","a","an","and","of","in"]
		if exceptions.include?(word) 
			true
		else
			false
		end
	end
end
