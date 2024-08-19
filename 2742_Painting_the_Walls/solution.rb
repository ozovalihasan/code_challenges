# @param {Integer[]} cost
# @param {Integer[]} time
# @return {Integer}
"I couldn't solve"

def paint_walls(cost, time)
  check_walls(cost, time)
end

def check_walls(cost_arr, time_arr)
  @necessary_total_time = cost_arr.size
  @pairs = cost_arr.zip(time_arr).sort_by { |cost, time| [time, -cost] }.reverse
  @min_necessary_cost = Float::INFINITY
  @max_index = @pairs.size - 1
  @checked = Array.new(@pairs.size + 1, Float::INFINITY)

  @memo = Array.new(@pairs.size) {{}}
  0.upto(@max_index) { |index| check_pairs(index, 0, 0) }

  @min_necessary_cost
end

def check_pairs(index, total_cost, total_units)
  return if total_cost >= @min_necessary_cost
  return if @memo[index][[total_cost, total_units]]

  @memo[index][[total_cost, total_units]] = true

  pair = @pairs[index]
  total_cost += pair.first
  total_units += 1 + pair.last

  (index + 1).upto(@max_index) do |next_index|
    check_pairs(next_index, total_cost, total_units)
  end

  @min_necessary_cost = total_cost if total_cost < @min_necessary_cost && total_units > @max_index
end
