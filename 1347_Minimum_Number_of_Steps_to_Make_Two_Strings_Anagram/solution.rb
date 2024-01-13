# @param {String} s
# @param {String} t
# @return {Integer}
def min_steps(s, t)
  s_bytes = s.bytes.tally
  t_bytes = t.bytes.tally
  t_bytes.default = 0
  
  s_bytes.sum do |byte, count| 
    [count - t_bytes[byte], 0].max
  end
end
