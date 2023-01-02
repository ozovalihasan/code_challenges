# @param {Integer} n
# @return {String}
def thousand_separator(n)
  n.to_s.reverse.scan(/.{1,3}/).join(".").reverse
end