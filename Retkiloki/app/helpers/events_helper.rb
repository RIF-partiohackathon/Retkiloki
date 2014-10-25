module EventsHelper
	def countdays() #counts total days
		attendees = Attendance.where(event_id = @event_id)
		fulltimeattendances = 0
		parttimeattendances = 0
		parttimedays = 0
		for i in attendees
			if (i.enddate = @event.enddate && i.startdate == @event.startdate)
				fulltimeattendances = fulltimeattendances +1
			else
				parttimeattendances = parttimeattendances + 1
				parttimedays = parttimedays +( i.enddate - i.startdate)
			end
		end
		if((@event.enddate - @event.startdate) < 0 || @event.attendees <= 0)
			return "You gave negative duration and/or zero attendees"
		elsif((@event.enddate - @event.startdate) == 1)
			return 	@event.attendees
		elsif((@event.enddate - @event.startdate) > 1)
			return attendees * ((@event.enddate - @event.startdate)+parttimedays).to_int

		end
	end
end
