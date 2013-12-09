module ApplicationHelper
  def human_readable_timestamp(date_time = DateTime.now)
    date_time.strftime '%m/%d/%Y %H:%M:%S'
  end

  def human_readable_time(date_time = DateTime.now)
    date_time.strftime '%H:%M:%S' 
  end

  def human_readable_date(date_time = DateTime.now)
    date_time.strftime '%m/%d/%Y'
  end

  def from_string(string)
    DateTime.parse string
  end
end
