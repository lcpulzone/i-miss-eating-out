class Restaurant
  attr_reader :opening_time,
                   :name,
                   :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    (opening_time.to_i + hours).to_s + ":00"
  end

  def add_dish(food_dish)
    @dishes << food_dish
  end

  def open_for_lunch?
    return true if @opening_time.to_i < 12
  else
    false
  end

  def menu_dish_names
    menu_dishes = @dishes.map do |dish|
      dish.upcase
    end
    menu_dishes
  end

  def announce_closing_time(hours)
    if closing_time(hours).to_i < 12
      "#{@name} will be closing at #{closing_time(hours)}AM"
    else
      "#{@name} will be closing at #{pm_closing_time(hours)}"
    end
  end

  def pm_closing_time(hours)
    (closing_time(hours).to_i - 12).to_s + ":00PM"
  end
end



















# class Restaurant
#   attr_reader :opening_time,
#               :name,
#               :dishes
#
#   def initialize(open, name)
#     @opening_time = open
#     @name = name
#     @dishes = []
#   end
#
#   def closing_time(length)
#     (@opening_time.to_i + length).to_s + ":00"
#   end
#
#   def add_dish(dish)
#     @dishes << dish
#   end
#
#   def open_for_lunch?
#     @opening_time.to_i < 12
#   end
#
#   def menu_dish_names
#     capilalized =[]
#     @dishes.each do |dish|
#       capilalized << dish.upcase
#     end
#     capilalized
#   end
#
#   def announce_closing_time(hours)
#     military_time = closing_time(hours)
#     if military_time.to_i >= 12
#       time = military_time.to_i - 12
#         formatted_time = time.to_s + ":00"
#           "#{name} will be closing at #{formatted_time}PM"
#     else
#       "#{name} will be closing at #{military_time}AM"
#     end
#   end
# end
