# @param {Integer} n
# @param {Integer[][]} edges
# @param {Float[]} succ_prob
# @param {Integer} start
# @param {Integer} end
# @return {Float}
def max_probability(n, edges, succ_prob, start_point, end_point)
  @points = Array.new(n) {[]}
  @end_point = end_point

  edges.zip(succ_prob).each do |(point1, point2), prob|
    @points[point1] << [point2, prob]
    @points[point2] << [point1, prob]
  end

  result = 0
  queue = [ [start_point, 1] ]
  checked = {}
  loop do
    point, prob = queue.pop
    while checked[point] 
      point, prob = queue.pop
    end
    
    break unless prob
    break if prob <= result

    checked[point] = true

    @points[point].each do |point2, prob2|
      next if checked[point2]
      next result = [result, prob2 * prob].max if point2 == end_point
      
      index = queue.bsearch_index {|_, prob1| prob1 > (prob2 * prob) } || queue.size
      queue.insert(index, [point2, prob2 * prob])
    end
  end

  result.round(5)
end

