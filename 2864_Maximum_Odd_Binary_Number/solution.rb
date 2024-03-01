# @param {String} s
# @return {String}
def maximum_odd_binary_number(s)
  counts_one = s.count('1')
  counts_zero = s.count('0')
  "1" * (counts_one - 1) + "0" * (counts_zero) + "1"
end