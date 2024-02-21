# @param {Integer} left
# @param {Integer} right
# @return {Integer}
def range_bitwise_and(left, right)
  left = left.to_s(2).chars.reverse
  right = right.to_s(2).chars.reverse
  zipped_nums = right.zip(left)

  result = 0
  (zipped_nums.size - 1).downto(0) do |index|
    right_digit, left_digit = zipped_nums[index]
    right_digit == left_digit ? result += (2 ** index) * left_digit.to_i : break
  end

  result
end