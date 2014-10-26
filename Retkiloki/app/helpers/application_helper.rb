module ApplicationHelper

  def countAllEventDays
    event = Event.all;
    days
    event.each do |f|
      f.countdays
    end
  end
end
