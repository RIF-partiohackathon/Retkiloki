odule EventsHelper
	def countdays() #counts total days
		attendees = Attendance.where(event_id = @event_id)
		fullTimeAttendances = 0
		PartTimeAttendances = 0
		PartTimedays = 0
		for i in attendees
			if (i.enddate = @event.enddate && i.startdate == @event.startdate)
				fullTimeAttendances = fulltimeAttendances + 1
			else
				PartTimeAttendances = PartTimeattendances + 1
				PartTimedays = PartTimedays + ( i.enddate - i.startdate)
			end
		end
		if((@event.enddate - @event.startdate) < 0 || @event.attendees == nil || @event.attendees < 1)
			return "You gave negative duration and/or zero attendees"
		elsif((@event.enddate - @event.startdate) == 1)
			return 	@event.attendees
		elsif((@event.enddate - @event.startdate) > 1)
			return attendees * ((@event.enddate - @event.startdate)+PartTimedays).to_int

		end
	end
end
