# @param {String} str
# @return {Integer}
def max_depth(str)
  depth = 0
  max = 0
  str.each_char do |char|
    if char == "("
      depth += 1
      max = depth if depth > max
    elsif char == ")"
      depth -= 1
    end
  end

  max
end