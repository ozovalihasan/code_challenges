# @param {Integer[]} plants
# @param {Integer} capacity
# @return {Integer}
def watering_plants(plants, capacity)
  steps = plants.size
  current_level = capacity

  plants.each_with_index do |plant, index|
    if current_level < plant
      steps += index * 2 
      current_level = capacity
    end

    current_level -= plant
  end

  steps
end
