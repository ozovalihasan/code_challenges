# @param {Integer[]} arr
# @return {Integer}
def find_lucky(arr)
  counts = arr.tally
  counts.values.uniq.sort.reverse.find { |num| counts[num] == num }
  -1
end
