class Timer
	attr_reader :seconds, :time_string
	
	def initialize
		@seconds = 0
		@time_string=0
	end

	def seconds=(in_seconds)
		@seconds = in_seconds
		minutes = 0
		hours = 0
		if in_seconds > 60
			@seconds = in_seconds%60
			minutes = in_seconds/60
		end
		minnew=0
		if minutes > 60
			minnew=minutes%60
			hours=minutes/60
			minutes=minnew
		end
		if @seconds <10
			secshow= "0"+@seconds.to_s
		else
			secshow= @seconds.to_s
		end
		if minutes <10
			minshow= "0"+ minutes.to_s
		else
			minshow= minutes.to_s
		end
		if hours <10
			hourshow= "0"+hours.to_s
		else 
			hourshow= hours.to_s
		end
		@time_string = hourshow + ":" + minshow + ":" + secshow
	end
end
