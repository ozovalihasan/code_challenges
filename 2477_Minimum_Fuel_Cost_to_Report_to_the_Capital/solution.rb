# @param {Integer[][]} roads
# @param {Integer} seats
# @return {Integer}
def minimum_fuel_cost(roads, seats)
  @seats = seats
  capital_city = 0

  cities = { capital_city => []}
  roads.each do |(first_city, second_city)|
    cities[first_city] ||= []
    cities[first_city] << second_city

    cities[second_city] ||= []
    cities[second_city] << first_city
  end

  @result = 0
  cities[capital_city].each do |city|
    cities[city].delete(capital_city)
    check_passengers(city, cities)  
  end
  
  @result
end

def check_passengers(city, cities)
  passengers = cities[city].sum do |next_city|
                 cities[next_city].delete(city)
                 check_passengers(next_city, cities)
               end
  
  @result += passengers / @seats + 1
  passengers + 1
end