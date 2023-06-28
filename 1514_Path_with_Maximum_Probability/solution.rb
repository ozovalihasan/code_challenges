# @param {Integer} n
# @param {Integer[][]} edges
# @param {Float[]} succ_prob
# @param {Integer} start
# @param {Integer} end
# @return {Float}
def max_probability(n, edges, succ_prob, start_point, end_point)
  @points = Array.new(n) {[]}
  @end_point = end_point

  edges.zip(succ_prob).each do |(point1, next_point), prob|
    @points[point1] << [next_point, prob]
    @points[next_point] << [point1, prob]
  end

  result = 0
  queue = [ [start_point, 1] ]
  checked = {}
  loop do
    checked_point, checked_prob = queue.pop
    while checked[checked_point] 
      checked_point, checked_prob = queue.pop
    end
    
    break unless checked_prob
    break if checked_prob <= result

    checked[checked_point] = true

    @points[checked_point].each do |next_point, next_prob|
      next if checked[next_point]
      next result = [result, next_prob * checked_prob].max if next_point == end_point
      
      index = queue.bsearch_index {|_, prob_from_queue| prob_from_queue > (next_prob * checked_prob) } || queue.size
      queue.insert(index, [next_point, next_prob * checked_prob])
    end
  end

  result.round(5)
end

