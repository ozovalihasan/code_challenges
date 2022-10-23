# @param {Integer} n
# @return {Integer}
def count_largest_group(n)
  hash = {}
  1.upto(n) {|num| (hash[num.digits.sum] ||= []) << num}
  
  max_size = hash.values.map(&:size).max
  hash.values.count {|arr| arr.size == max_size}
end