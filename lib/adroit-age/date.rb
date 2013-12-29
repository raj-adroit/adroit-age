class Date

	def find_age
		Adroit::Age.new.find_year self
	end

	def find_full_age year_cust = nil, month_cust = nil
		Adroit::Age.new.find_full self, year_cust, month_cust
	end

end