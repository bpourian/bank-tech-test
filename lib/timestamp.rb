require 'date'

class Timestamp

  def get_date
    date = DateTime.now
    date.strftime("%d/%m/%Y")
  end

end
