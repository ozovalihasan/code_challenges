# @param {String} colors
# @param {Integer[]} needed_time
# @return {Integer}
def min_cost(colors, needed_time)
  last_color = ''
  max = 0

  total_time = needed_time.sum
  colors.each_char.with_index do |color, index|
    time = needed_time[index]

    if color == last_color
      max = [max, time].max
    else
      total_time -= max
      max = time
    end

    last_color = color
  end

  total_time -= max
end
