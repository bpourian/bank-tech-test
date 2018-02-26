require 'date'

class Timestamp

  def get_date
    date = DateTime.now
    date.strftime("%m/%d/%Y")
  end

end
