class Restaurant
  attr_reader :opening_time,
              :name,
              # :close_time
              :capilalized

  def initialize(open, name)
    @opening_time = open
    @name = name
    @dish = []
    # @close_time = ""
    @lunch = true
    @capilalized = []
  end

  def dishes
    @dish
  end
  #
  # def closing_time(length)
  #   @closing_time == @opening_time + length
  #   @closing_time
  # end

  # def closing_time(length)
  #   @open_time.each do |length|
  #     @close_time << @open_time + length
  #   end
  #   @close_time
  # end

  # def closing_time(length)
  #   @close_time = "#{open_time.to_i + length.to_f}"
  # end

  # def closing_time(length)
  #
  # end

#  I had to move on from the time test, the math portion really trips me up and I have spent about 1 to 1 1/2 hours trying to get this to work in various forms. Above are just a few of the things I've tried, I have a distinct feeling I am over complicating the situation. My apologies.


  def add_dish(dish)
    @dish << dish
  end

  def open_for_lunch?
    if @opening_time >= "12:00"
      @lunch = false
    end
    @lunch
  end

  # def menu_dish_names
  #   @capilalized << @dish.upcase
  # end

  # def menu_dish_names
  #   @capilalized << add_dish.upcase
  # end

# I again ran into an issue here, I feel 'okay' about the last test I created but was unsure if I should choose just one restaurant or both.  That's why that test looks so long.  I understand that using .upcase if for a string and I have an array of strings which is one of my many errors.  Overall, I am having some trouble with creating the methods, I get really confused about what I can and can't do and then mix them up.  Thank you for taking time to provide me feedback, I look forward to reading about your suggestions on what I can do to improve my creating-methods method.  I will also talk with my mentor about it and reach out to my peers.
end
