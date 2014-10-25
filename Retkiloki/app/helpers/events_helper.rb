module EventsHelper
	def countdays() #counts total days
		attendees = Attendance.where(event_id = @event_id)
		fullTimeAttendances = 0
		partTimeAttendances = 0
		partTimedays = 0
		for i in attendees
			if (i.enddate = @event.enddate && i.startdate == @event.startdate)
				fullTimeAttendances = fulltimeAttendances + 1
			else
				partTimeAttendances =partTimeattendances + 1
				partTimedays = partTimedays + ( i.enddate - i.startdate)
			end
		end
		if((@event.enddate - @event.startdate) < 0 || @event.attendees == nil || @event.attendees < 1)
			return "You gave negative duration and/or zero attendees"
		elsif((@event.enddate - @event.startdate) == 1)
			return 	@event.attendees
		elsif((@event.enddate - @event.startdate) > 1)
			return @event.attendees * ((@event.enddate - @event.startdate)-partTimedays).to_int

		end
	end
end
