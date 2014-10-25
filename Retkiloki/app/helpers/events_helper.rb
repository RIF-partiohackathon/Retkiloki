module EventsHelper
	def countdays() #counts total days
		return 	@event.attendees * (@event.enddate - @event.startdate).to_int
	end

end
