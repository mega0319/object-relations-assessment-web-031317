class Restaurant
  attr_accessor :name, :reviews

  ALL = []

  def initialize(name)
    @name = name
    @reviews = []
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(restaurant_name)
    self.all.find do |restaurant_instance|
      restaurant_instance == restaurant_name
    end
  end

  # def self.create_new_if_not_exists(restaurant_name)
  #   self.all.each do |restaurant_instance|
  #     if restaurant_instance.name == restaurant_name
  #       return restaurant_instance
  #     else
  #       new_restaurant = self.new(restaurant_name)
  #       return new_restaurant
  #     end
  #   end
  # end

  def reviews
    @reviews
  end

  def customers
    self.reviews.map do |review_instance|
      review_instance.customer
    end
  end



end
