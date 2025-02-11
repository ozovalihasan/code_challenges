# @param {String} str
# @param {String} part
# @return {String}
def remove_occurrences(str, part)
  str = str.sub(part, '') while str.match? part
  str
end
