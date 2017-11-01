class Day
  def initialize(day)
    @day = day
  end

  def day_name
    @day
  end

  def weekday?
    weekdays = %w(monday tuesday wednesday thrusday friday)
    if weekdays.include?(day_name)
      return true
    else
      return false
    end
  end
end

class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def weather
    @attributes[:weather]
  end

  def day
    @attributes[:day_of_week]
  end

  def prepare

    # Ensure appropriate weather clothing is added to backpack
    weather_clothing

    # Ensure gym shoes are added to backpack if it's a gym day
    # Gotta get to the gym on Tuesdays and Thursdays.
    gym_shoes?

    # Bring a packed lunch on all weekdays
    lunch
  end

  def weather_clothing
    if weather == 'rainy'
      @items << 'pants'
      @items << 'shirt'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'pants'
      @items << 'shirt'
      @items << 'jacket'
    else
      @items << 'pants'
      @items << 'shirt'
    end
  end

  def gym_shoes?
    if day == 'monday' || day == 'thursday'
      # add gym shoes to items
      @items << 'gym shoes'
    end
  end

  def lunch
    if day != "saturday" && day != "sunday"
      @items << 'packed lunch'
    else
      @items << 'snacks'
    end
  end

  # Prints a summary packing list for Melinda's backpack
  def packing_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{day}, Weather: #{weather}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
