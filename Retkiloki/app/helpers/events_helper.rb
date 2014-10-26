module EventsHelper

  def countdays()
    #counts total days
    attendees = Attendance.where(event_id = @event.id)
    days = 0
    if !attendees.nil?
      attendees.each do |i|
          tmpdays = (i.enddate - i.startdate)
            if tmpdays <= 1
              days +=1
            else
              days += (tmpdays - 1)
            end
      end
      tmpattendees = @event.attendees - attendees.size;
    else
      tmpattendees = @event.attendees
    end
    tmpdays = tmpattendees * (@event.enddate - @event.startdate)
    if tmpdays <= 1
      days +=1
    else
      days += (tmpdays - 1)
    end
    return days
  end

end
