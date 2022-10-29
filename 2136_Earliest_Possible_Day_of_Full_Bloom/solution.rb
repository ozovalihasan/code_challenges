# @param {Integer[]} plant_time
# @param {Integer[]} grow_time
# @return {Integer}
def earliest_full_bloom(plant_time, grow_time)
  rest_day = 0
  more_necessary_days = []
  plant_time.zip(grow_time).sort_by(&:last).each do |plant_day, grow_day|
    if  rest_day < grow_day
      more_necessary_days << (grow_day - rest_day)
    end
    rest_day += plant_day
  end

  plant_time.sum + more_necessary_days.max
end