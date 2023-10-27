# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
  (Math.sqrt(num).to_i) ** 2 == num
end