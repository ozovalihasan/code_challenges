# @param {Integer} num, a positive integer
# @return {Integer}
def hamming_weight(num)
  num.to_s(2).count("1")
end