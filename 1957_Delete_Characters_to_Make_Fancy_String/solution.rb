# @param {String} s
# @return {String}
def make_fancy_string(str)
  str.chars.slice_when {|first, second| first != second }.map {|part| part.first(2)}.join
end
