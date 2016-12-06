class Calendarentry

  attr_accessor :date, :time, :title, :location

  def initialize (date, time, title, location)
    @date = date
    @time = time
    @title = time
    @location = location
  end

  def change_date (date)
    @date = date
  end

  def change_time (time)
    @time = time
  end

  def change_title (title)
    @title = title
  end

  def change_location (location)
    @location = location
  end

  def notify (todaysdate)
    if todaysdate == date
      puts "You have #{name} today at #{time} and #{location}"
    else
      puts "#{name} isn't on today"
    end
  end

end
