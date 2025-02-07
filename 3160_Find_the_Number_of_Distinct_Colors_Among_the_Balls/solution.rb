# @param {Integer} limit
# @param {Integer[][]} queries
# @return {Integer[]}
def query_results(_limit, queries)
  colors = {}
  color_counts = Hash.new(0)
  count = 0
  queries.map do |ball, color|
    if (ball_color = colors[ball])
      color_counts[ball_color] -= 1
      count -= 1 if color_counts[ball_color].zero?
    end
    
    colors[ball] = color
    color_counts[color] += 1
    count += 1 if color_counts[color] == 1
    count
  end
end
