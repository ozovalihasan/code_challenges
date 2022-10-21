# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  arr.tally.values.tally.values.all? 1
end

###################
## Solution 2
###################
# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  hash2 = {}
  arr.tally.values.each { |num2| hash2[num2] ? (return false) : hash2[num2] = true }
  true
end