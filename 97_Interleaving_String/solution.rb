# @param {String} s1
# @param {String} s2
# @param {String} s3
# @return {Boolean}
def is_interleave(s1, s2, s3)
  return false unless (s1.size + s2.size) == s3.size
  return false unless (s1.chars.tally.merge(s2.chars.tally) {|key, val1, val2| val1 + val2} == s3.chars.tally)

  @s1 = s1
  @s2 = s2
  @s3 = s3

  @s1_max = s1.size
  @s2_max = s2.size
  @s3_max = s3.size
  
  @unchecked = {}
  check(0, 0)
end

def check(s1_index, s2_index)
  s3_index = s1_index + s2_index
  @unchecked[s1_index] ||= Hash.new(true)

  return false unless @unchecked[s1_index][s2_index]
  return @unchecked[s1_index][s2_index] = @s2[s2_index..] == @s3[s3_index..] if s1_index == @s1_max
  return @unchecked[s1_index][s2_index] = @s1[s1_index..] == @s3[s3_index..] if s2_index == @s2_max
  
  @unchecked[s1_index][s2_index] = (
                                     @s1[s1_index] == @s3[s3_index] && check(s1_index + 1, s2_index)
                                   ) || (
                                     @s2[s2_index] == @s3[s3_index] && check(s1_index, s2_index + 1)
                                   )
end