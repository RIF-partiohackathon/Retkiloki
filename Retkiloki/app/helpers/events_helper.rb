module EventsHelper
	def countdays() #counts total days
		if((@event.enddate - @event.startdate) < 0 || @event.attendees <= 0)
			return "You gave negative duration and/or zero attendees"
		elsif((@event.enddate - @event.startdate) == 1)
			return 	@event.attendees
		elsif((@event.enddate - @event.startdate) > 1)
			return @event.attendees * (@event.enddate - @event.startdate).to_int
		
		else
			return @event.attendees.to_int
		end
	end

end
