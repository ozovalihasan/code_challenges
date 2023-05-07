# @param {Integer[]} obstacles
# @return {Integer[]}
def longest_obstacle_course_at_each_position(obstacles)
  cache = []
  obstacles.map.each_with_index do |obstacle, index2|
    index = cache.bsearch_index {|el| el > obstacle } || cache.size

    cache[index] = obstacle
    index + 1
  end
end