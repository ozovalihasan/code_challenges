# @param {Integer[][]} pairs
# @return {Integer}
def find_longest_chain(pairs)
  pairs.sort_by!(&:last)
  
  last = -Float::INFINITY
  pairs.count do |start_num, end_num|
    last = end_num if last < start_num
  end
end