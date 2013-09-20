module Adroit
	
	class Age
		attr_accessor :dob, :now, :age

		def find dob
			@dob = (dob.is_a? String) ? Date.parse(dob) : dob
	  		@now = Time.now.utc.to_date
	  		@age = @now.year - @dob.year - ((@now.month > @dob.month || (@now.month == @dob.month && @now.day >= @dob.day)) ? 0 : 1)
		end
	end

end
