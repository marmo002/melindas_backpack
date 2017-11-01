class Day
  # def initialize(day)
  #   @day = day
  # end
  #
  # def day
  #   @day
  # end

  def weekday?
    weekdays = %w(monday tuesday wednesday thrusday friday)
    if weekdays.include?(self)
      return true
    else
      return false
    end
  end
end
