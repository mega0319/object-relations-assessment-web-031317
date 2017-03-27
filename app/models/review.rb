class Review

  ALL = []

  attr_accessor :restaurant, :content

  def initialize(restaurant, content)
    @restaurant = restaurant
    @content = content
    ALL << self
  end

  def self.all
    ALL
  end

  def customer=(customer)
    @customer = customer
  end

  def customer
    @customer
  end




end
