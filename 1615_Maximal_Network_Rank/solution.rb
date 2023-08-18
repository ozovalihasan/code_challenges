# @param {Integer} n
# @param {Integer[][]} roads
# @return {Integer}
def maximal_network_rank(n, roads)
  connected_cities = Array.new(n) {[]}
  levels = []
  connected_cities_counts = Array.new(n, 0)
  roads.each do |first_city, second_city|
    (connected_cities[first_city] ||= []) << second_city
    (connected_cities[second_city] ||= []) << first_city  
    connected_cities_counts[first_city] += 1
    connected_cities_counts[second_city] += 1
    (levels[connected_cities_counts[first_city]] ||= []) << first_city
    (levels[connected_cities_counts[second_city]] ||= []) << second_city
  end

  return 0 if levels.empty?

  while levels[-2] && (levels[-2] - levels[-1]).empty? 
    levels.pop
  end
  
  result_cities = levels[-1].size > 1 ? levels[-1] : levels[-2]
                  
  result_cities_connected = levels.last.all? { |city| (result_cities - connected_cities[city] - [city]).empty? }
  if levels[-1].size > 1
    connected_cities_counts[levels[-1].first] * 2 - (result_cities_connected ? 1 : 0)
  else
    connected_cities_counts[levels[-1].first] + connected_cities_counts[(levels[-2] - levels[-1]).first] - (result_cities_connected ? 1 : 0)
  end
end