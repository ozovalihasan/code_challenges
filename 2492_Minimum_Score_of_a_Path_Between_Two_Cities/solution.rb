# @param {Integer} n
# @param {Integer[][]} roads
# @return {Integer}
def min_score(n, roads)
  cities = 0.upto(n).map { City.new }

  roads.each do |first_city, second_city, score|
    cities[first_city].roads << Road.new(cities[second_city], score)
    cities[second_city].roads << Road.new(cities[first_city], score)
  end

  starting_city = 1
  current_cities = [ cities[starting_city] ]
  scores = []
  until current_cities.empty?
    
    current_cities.map! do |city|
      city.visited = true
      scores.concat city.roads.map(&:score)
      city.roads.map(&:end_city)
    end

    current_cities.flatten!
    current_cities.uniq!
    current_cities.reject!(&:visited)
  end

  scores.min
end

class City
  attr_accessor :roads, :visited
  
  def initialize
    @roads = []
    @visited = false
  end
end

class Road
  attr_reader :end_city, :score
  
  def initialize(end_city, score)
    @end_city = end_city
    @score = score
  end
end