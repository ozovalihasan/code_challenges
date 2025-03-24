# @param {Integer} num
# @param {Integer[][]} roads
# @return {Integer}
MODULO = 10**9 + 7
def count_paths(num, roads)
  nodes = Array.new(num) { [] }

  roads.each do |(start_point, end_point, time)|
    nodes[start_point] << [end_point, time]
    nodes[end_point] << [start_point, time]
  end
  
  checked = []
  result = [[0, num - 1, 1]]

  until result[0][1] == 0
    checked_time, checked_node, total_path = result.shift
    next if checked[checked_node]
    checked[checked_node] = true

    nodes[checked_node].each do |next_node, next_time|
      next if checked[next_node]

      total_time = checked_time + next_time

      index = result.bsearch_index { |result_time, result_node, _| (result_time > total_time) || ((result_time == total_time) && (result_node >= next_node)) }

      if index 
        if result[index][0] == total_time && result[index][1] == next_node
          result[index][2] += total_path
        else
          result.insert(index, [total_time, next_node, total_path])
        end
      else
        index = result.size
        result << [total_time, next_node, total_path]
      end

      result[index][2] %= MODULO
    end
  end
  
  result.first.last
end