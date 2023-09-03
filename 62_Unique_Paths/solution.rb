# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  total = (m - 1) + (n - 1)
  
  bigger_num, smaller_num = [n, m].minmax
  range_multiply(bigger_num, total) / range_multiply(1, smaller_num-1)
end

def range_multiply(start_num, end_num)
  (start_num..end_num).reduce(:*) || 1
end