# @param {String[][]} tickets
# @return {String[]}
def find_itinerary(tickets)
  @cities = {}
  tickets.each do |start_city, end_city|
    (@cities[start_city] ||= [])
    @cities[start_city] << end_city
  end
  @cities.default = []
  @cities.transform_values! {|connected_cities| connected_cities.sort.reverse}

  @max_step = tickets.size

  start_city = "JFK"
  check_cities(start_city).reverse
end

def check_cities(start_city, step = 0)
  return [start_city] if step == @max_step
  
  step += 1

  (@cities[start_city].size - 1).downto(0) do |index|
    city = @cities[start_city][index] 

    @cities[start_city].delete_at(index)
    subresult = check_cities(city, step)
    
    return subresult << start_city if subresult
    
    @cities[start_city].insert(index, city)
  end

  false
end