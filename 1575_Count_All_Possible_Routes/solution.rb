MOD = 10 ** 9 + 7

# @param {Integer[]} locations
# @param {Integer} start
# @param {Integer} finish
# @param {Integer} fuel
# @return {Integer}
def count_routes(locations, start, finish, fuel)
  @locations = locations

  @cities = []
  locations.each_index {|index| @cities[index] = {}}
  check_city(start, finish, fuel)
end

def check_city(start_index, finish_index, fuel)
  return @cities[start_index][fuel] if @cities[start_index][fuel]
  
  start_location = @locations[start_index]
  return @cities[start_index][fuel] = 0 if fuel < (start_location - @locations[finish_index]).abs
  
  count = 0
  count += 1 if start_index == finish_index

  @locations.each_with_index do |location, index|
    next if index == start_index

    count += check_city(index, finish_index, (fuel - (location - start_location).abs))
  end
  
  @cities[start_index][fuel] = count % MOD
end