# @param {String} str
# @return {Integer}
def max_power(str)
  str.chars.slice_when(&:!=).max_by(&:size).size
end