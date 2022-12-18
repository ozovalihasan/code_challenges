# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
  future_temperatures = []
  result = Array.new(temperatures.size, 0)

  temperatures.reverse_each.with_index do |temperature, index|
    until future_temperatures.empty? || future_temperatures.last.first > temperature 
      future_temperatures.pop
    end
    result[index] = (index - future_temperatures.last.last) if future_temperatures.any?
    future_temperatures << [temperature, index]
  end
  
  result.reverse
end