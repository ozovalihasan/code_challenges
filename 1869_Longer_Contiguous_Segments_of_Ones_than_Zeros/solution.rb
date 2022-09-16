# @param {String} s
# @return {Boolean}
def check_zero_ones(s)
  s.scan(/0+|1+/).max_by {|str| [str.size, str[0] == "0" ? 1 : 0 ] }[0] == "1"
end