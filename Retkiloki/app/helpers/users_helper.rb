module UsersHelper
	def getdays()
		days = 0
		for i in @user.events
			if ((i.enddate - i.startdate) == 1)
				days = days + 1
			elsif((i.enddate - i.startdate)-1 > 1)	
				days = days+(i.enddate - i.startdate)-1.to_int
			end
		end
		return days
	end
end
