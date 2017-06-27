class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def prepare
    # set up local variables used by rest of prepare method
    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]

    @items << 'pants'
    @items << 'shirt'
    # Ensure appropriate clothing for weather is added to backpack
    if weather == 'rainy'
      rainy_weather
    elsif weather == 'cold'
      cold_weather
    else
    end
    # Ensure gym shoes are added to backpack if it's a gym day
    # Gotta get to the gym on Tuesdays and Thursdays. Wait a sec...
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end

    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    else
      @items << 'snacks'
    end
  end

  # Prints a summary packing list for Melinda's backpack
  def my_packing_list
    summary_packing_list = []
    summary_packing_list << "Melinda, here's your packing list!"
    summary_packing_list << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    summary_packing_list << ""

    @items.each do |item|
      summary_packing_list << "- #{item}"
    end
    summary_packing_list.join("\n")
  end


  def rainy_weather
    @items << 'umbrella'
  end

  def cold_weather
    @items << 'jacket'
  end
end
