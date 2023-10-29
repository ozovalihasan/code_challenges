# @param {String} s
# @return {String}
def make_fancy_string(str)
  str.gsub(/(.)\1{1,}/, '\\1' * 2) || str
end
