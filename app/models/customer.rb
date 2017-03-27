class Customer
  attr_accessor :first_name, :last_name, :my_reviews

  ALL = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @my_reviews = []
    ALL << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def my_reviews
    @my_reviews
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    self.all.find do |customer_instance|
      customer_instance.full_name == name
    end
  end

  def self.find_all_by_first_name(first_name)
    self.all.select do |customer_instance|
      customer_instance.first_name == first_name
    end
  end

  def self.all_names
    self.all.map do |customer_instance|
      customer_instance.full_name
    end
  end

  def add_review(restaurant, content)
    new_restaurant = Restaurant.new(restaurant)
    new_review = Review.new(new_restaurant, content)
    new_review.restaurant = new_restaurant
    new_review.customer = self
    self.my_reviews << new_review
    new_restaurant.reviews << new_review
    new_review
  end
end
