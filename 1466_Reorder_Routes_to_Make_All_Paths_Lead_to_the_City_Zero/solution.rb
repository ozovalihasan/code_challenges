# @return {Integer}
# @param {Integer} n
# @param {Integer[][]} connections
def min_reorder(n, connections)
  cities = 0.upto(n-1).map { City.new }

  connections.each do |city1, city2|
    cities[city1].going_to_cities << cities[city2]
    cities[city1].connected_cities << cities[city2]
    cities[city2].connected_cities << cities[city1]
  end

  end_city = cities[0]
  @necessary_change = end_city.going_to_cities.size
  end_city.connected_cities.each do |starting_city|
    check_city(end_city, starting_city)
  end

  @necessary_change
end

def check_city(end_city, starting_city)
  @necessary_change += starting_city.going_to_cities.size
  @necessary_change -= 1 if starting_city.going_to_cities.include?(end_city)

  starting_city.connected_cities.delete(end_city)
  starting_city.connected_cities.each do |next_city|
    check_city(starting_city, next_city)
  end
end

class City
  attr_reader :connected_cities, :going_to_cities

  def initialize
    @connected_cities = []
    @going_to_cities = []
  end
end