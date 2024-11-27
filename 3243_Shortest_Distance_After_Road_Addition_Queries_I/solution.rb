# @param {Integer} city_number
# @param {Integer[][]} queries
# @return {Integer[]}
def shortest_distance_after_queries(city_number, queries)
  @paths = Array.new(city_number) { |city_index| [city_index + 1] }
  @paths[-1] = []

  @counts = (0...city_number).to_a
  
  queries.map do |start_city, finish_city|
    @paths[start_city] << finish_city
    
    check_next_city(finish_city, @counts[start_city] + 1)
    
    @counts.last
  end
end

def check_next_city(index, count)
  return if count > @counts[index]
  
  @counts[index] = count
  @paths[index].each { |next_city_index| check_next_city(next_city_index, count + 1) }
end
