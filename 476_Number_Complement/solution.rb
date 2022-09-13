# @param {Integer} num
# @return {Integer}
def find_complement(num)
  2 ** num.to_s(2).length - num - 1
end