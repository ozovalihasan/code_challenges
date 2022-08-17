# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
  heights.zip(heights.sort).count {|(current, expected)| current != expected }
end