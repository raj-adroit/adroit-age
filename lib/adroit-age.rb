require 'active_support/core_ext'

class AdroitAge
	def self.find_age(dob)
 	 	dob = dob.to_date
  		now = Time.now.utc.to_date
  		age = now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  		puts "#{age}"
	end
end