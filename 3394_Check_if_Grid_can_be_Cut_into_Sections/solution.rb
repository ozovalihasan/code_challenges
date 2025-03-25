# @param {Integer} num
# @param {Integer[][]} rectangles
# @return {Boolean}
def check_valid_cuts(num, rectangles)
  vertical = []
  horizontal = []
  rectangles.each do |x_start, y_start, x_end, y_end|
    vertical << x_start << (-x_end)
    horizontal << y_start << (-y_end)
  end

  vertical = sort_by_num(vertical)
  return true if count_pairs(vertical)

  horizontal = sort_by_num(horizontal)
  return true if count_pairs(horizontal)

  false
end

def sort_by_num(arr)
  arr.group_by(&:abs).sort.map(&:last).map(&:sort).flatten
end

def count_pairs(arr)
  count = 0
  overlap = 0
  arr.each do |num|
    overlap += num.negative? ? (-1) : 1
    
    count += 1 if overlap.zero?
    return true if count >= 3
  end

  false
end