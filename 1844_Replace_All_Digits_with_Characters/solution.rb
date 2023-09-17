# @param {String} s
# @return {String}
def replace_digits(s)
  s.gsub(/../) {|pairs| pairs[0] + (pairs[0].ord + pairs[1].to_i).chr}
end