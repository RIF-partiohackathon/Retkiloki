module EventsHelper

  def countdays()
    #counts total days
    attendees = Attendance.where(event_id = @event.id)
    days = 0
    tmpattendees = 0
    if !@event.attendees.nil?
    if !attendees.nil? 
      attendees.each do |i|
          tmpdays = (i.enddate - i.startdate)
            if tmpdays <= 1
              days +=1
            else
              days += (tmpdays - 1)
            end
      end
      tmpattendees = @event.attendees - attendees.length;
    else
      tmpattendees = @event.attendees
    end
    if tmpattendees > 0
		
    tmpdays = tmpattendees * (@event.enddate - @event.startdate)
    if tmpdays <= 1
      days +=1
    else
      days += (tmpdays - 1)
    end
    end
    return days
    end
    return "Ei osallistujamaaraa"
  end

end
