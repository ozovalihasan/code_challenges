# @param {String} s
# @return {Integer}
def min_insertions(s)
  @cache = Array.new(s.size) { [] }
  s = s.chars
  check( s, 0, s.size - 1)
end

def check(str, start_index, end_index)
  cached = @cache[end_index][start_index]
  return cached if cached

  if start_index >= end_index
    return @cache[end_index][start_index] = 0
  end
  
  if str[start_index] == str[end_index]
    return @cache[end_index][start_index] = check( str, start_index + 1, end_index - 1 )
  else
    return @cache[end_index][start_index] = [ 
                                              check( str, start_index + 1, end_index ), 
                                              check( str, start_index, end_index - 1 ) 
                                            ].min + 1
  end
  
end