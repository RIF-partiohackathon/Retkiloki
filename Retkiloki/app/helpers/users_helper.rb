module UsersHelper
	def getdays()
		days = 0
		for i in @user.attendances
			if ((i.enddate - i.startdate) == 1)
				days = days + 1
			elsif((i.enddate - i.startdate)-1 > 1)	
				days = days+(i.enddate - i.startdate)-1.to_int
			end
		end
		return days
	end

	def jankasusi()
    	metsayoRetket = 0
		pt_kisat_sm = 0
		pt_kisat_pm = 0
		pt_kisat_muu = 0
		leirit = 0
		pitka_vaellus = 0
 
		@user.attendances.each do |atte|
			metsayoRetket += 1 if (atte.enddate - atte.startdate) > 0
			pt_kisat_sm += 1 if atte.attendances.event.type == pt_kisat_sm
			pt_kisat_pm += 1 if atte.attendances.event.type == pt_kisat_pm
			pt_kisat_muu += 1 if atte.attendances.event.type == pt_kisat_muu
			leirit += 1 if atte.attendances.event.type == leiri
			pitka_vaellus += 1 if atte.attendances.type == pitka_vaellus
		end
 
		if pitka_vaellus && metsayoRetket > 24 && leirit > 9 && (pt_kisat_sm+pt_kisat_sm+pt_kisat_muu) > 9 && pt_kisat_sm
			'Erikoisjänkäsusi'
		elsif metsayoRetket > 14 && leirit > 4 && (pt_kisat_sm+pt_kisat_sm+pt_kisat_muu) > 4 && (pt_kisat_sm || pt_kisat_pm) 
			'I luokan jänkäsusi'
		elsif metsayoRetket > 9 && leirit > 1  && (pt_kisat_sm+pt_kisat_sm+pt_kisat_muu) > 1 
			'II luokan jänkäsusi'
		elsif metsayoRetket > 4 && leirit && (pt_kisat_muu || pt_kisat_pm || pt_kisat_sm)
			'III luokan jänkäsusi'
		else 
		    'Ei jänkäsutta'
        end
	end
end
