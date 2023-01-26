# @param {Integer} n
# @param {Integer[][]} flights
# @param {Integer} src
# @param {Integer} dst
# @param {Integer} k
# @return {Integer}
def find_cheapest_price(n, flights, src, dst, k)
  return 0 if src == dst

  best_airline = BestAirline.new(flights, n)
  best_airline.find_min_price(src, dst, k)
end

class City
  attr_accessor :min_price
  attr_reader :leaving_flights
  
  def initialize
    @leaving_flights = []
    @min_price = Float::INFINITY
  end
end

class Flight
  attr_reader :end_city, :price
  
  def initialize(end_city, price)
    @end_city = end_city
    @price = price
  end
end

class BestAirline
  attr_reader :nodes, :cities

  def initialize(flights, cities_number)
    @cities = cities_number.times.map do |index|
      City.new
    end
    
    flights.each do |start_city, end_city, price|
      @cities[start_city].leaving_flights << Flight.new(@cities[end_city], price)
    end
  end

  def find_min_price(src, dst, max_stop_flight)
    max_flight = max_stop_flight + 1
    total_flight = 0
    
    last_city = cities[ dst ]
    prices_to_last_city = []
    travel_plans = [ TravelPlan.new(cities[src], 0) ]

    until (total_flight == max_flight) || travel_plans.empty?
      
      travel_plans.map! do |travel_plan|

        travel_plan.end_city.leaving_flights.filter_map do |flight|
          price_to_the_next_city = travel_plan.price + flight.price
          
          if flight.end_city.min_price > price_to_the_next_city
            flight.end_city.min_price = price_to_the_next_city
            TravelPlan.new(flight.end_city, price_to_the_next_city )
          end
        end

      end

      travel_plans.flatten!
      
      travel_plans.reject! do |travel_plan|
        travel_plan.price >= last_city.min_price
      end

      total_flight += 1
    end

    last_city.min_price == Float::INFINITY ? -1 : last_city.min_price
  end
  
end

class TravelPlan
  attr_reader :end_city, :price
  
  def initialize(end_city, price)
    @end_city = end_city
    @price = price
  end
end