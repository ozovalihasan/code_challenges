# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
  left.upto(right).reject do |num| 
    digits = num.digits
    digits.include?(0) || digits.any? {|digit| (num % digit) != 0 } 
  end
end