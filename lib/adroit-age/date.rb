class Date

	def find_age
		Adroit::Age.new.find_year self
	end

	def find_age_with_month year_cust = nil, month_cust = nil
		Adroit::Age.new.find_with_month self, year_cust, month_cust
	end

end