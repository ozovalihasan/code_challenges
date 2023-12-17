class FoodRatings
=begin
  :type foods: String[]
  :type cuisines: String[]
  :type ratings: Integer[]
=end
  def initialize(foods, cuisines, ratings)
    @foods = {}
    @cuisines = {}
    @ratings = {}
    foods.zip(cuisines, ratings).each do |food, cuisine, rating|
      @foods[cuisine] ||= {}
      (@foods[cuisine][rating] ||= []) << food
      @cuisines[food] = cuisine
      @ratings[food] = rating
    end

    @highest_rated = {}
    @foods.each do |cuisine, cuisine_ratings|
      rating = cuisine_ratings.keys.max
      food = cuisine_ratings[rating].min_by(&:itself)
      @highest_rated[cuisine] = [food, rating]
    end
  end

=begin
  :type food: String
  :type new_rating: Integer
  :rtype: Void
=end
  def change_rating(food, new_rating)
    cuisine = @cuisines[food]
    old_rating = @ratings[food]
    @foods[cuisine][old_rating].delete(food)
    @foods[cuisine].delete(old_rating) if @foods[cuisine][old_rating].empty?
    (@foods[cuisine][new_rating] ||= []) << food
    @ratings[food] = new_rating

    highest_food, highest_rating = @highest_rated[cuisine]
    if (highest_rating == new_rating && highest_food > food) || (highest_rating < new_rating)
      return @highest_rated[cuisine] = [food, new_rating]
    end
    
    if (food == highest_food && old_rating > new_rating)
      ratings = @foods[cuisine]
      rating = ratings.keys.max
      food = ratings[rating].min

      @highest_rated[cuisine] = [food, rating]
    end
  end

=begin
  :type cuisine: String
  :rtype: String 
=end
  def highest_rated(cuisine)
    @highest_rated[cuisine].first
  end
end

# Your FoodRatings object will be instantiated and called as such:
# obj = FoodRatings.new(foods, cuisines, ratings)
# obj.change_rating(food, new_rating)
# param_2 = obj.highest_rated(cuisine)