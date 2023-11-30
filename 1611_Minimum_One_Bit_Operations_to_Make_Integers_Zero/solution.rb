# @param {Integer} num
# @return {Integer}
def minimum_one_bit_operations(num)
  str = num.to_s(2)

  result = 0
  total_ones = 0
  str.each_char do |char|
    if char == '1'
      result = (result * 2) + (total_ones.even? ? 1 : 0)
      total_ones += 1
    else
      result = (result * 2) + (total_ones.odd? ? 1 : 0)
    end
  end
  result
end
