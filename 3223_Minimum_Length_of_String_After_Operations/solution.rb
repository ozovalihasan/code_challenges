# @param {String} str
# @return {Integer}
def minimum_length(str)
  str.each_char.uniq.sum { |char| str.count(char).odd? ? 1 : 2 }
end
