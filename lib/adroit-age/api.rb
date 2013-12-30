module Adroit
  
  class Age

    attr_accessor :dob, :now, :age
	@@now = Time.now.utc.to_date
	def find_year dob
	   age = @@now.year - dob.year - ((full_year? dob) ? 0 : 1)
	end

	def find_with_month dob, year_cust, month_cust
	    year = find_year dob
        month = find_month dob
        month_cust_label = month_cust.nil? ? "#{month_label month}" : month_cust
        year_cust_label = year_cust.nil? ? "#{year_label year}" : year_cust
		"#{year} #{year_cust_label} and #{month} #{month_cust_label}"
    end

    def find_month dob
    	if @@now.month == dob.month 
				0
			elsif @@now.month < dob.month
				((12 - dob.month) + @@now.month) - ((full_month? dob.day) ? 0 : 1)
			elsif @@now.month > dob.month
				(@@now.month - dob.month) - ((full_month? dob.day) ? 0 : 1)
			end
    end

    def year_label year
    	year == 1 ? "year" : "years"
    end

    def month_label month
    	month == 1 ? "month" : "months" 
    end

    def full_month? day
    	(@@now.day > day || @@now.day == day)
    end

    def full_year? dob
    	(@@now.month > dob.month || (@@now.month == dob.month && @@now.day >= dob.day))
    end

	end

end
