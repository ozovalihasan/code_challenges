# @param {String} s
# @return {Integer}
def min_flips_mono_incr(s)
  min_flip = s.count("1")
  total_flip = s.count("0")

  s.each_char do |char|
    min_flip = total_flip if min_flip > total_flip
    total_flip += char == "1" ? 1 : -1
  end
  
  min_flip
end