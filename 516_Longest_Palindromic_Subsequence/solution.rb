# @param {String} s
# @return {Integer}
def longest_palindrome_subseq(s)
  @str = s
  @cache = []

  check 0, s.size - 1
end

def check(start_index, end_index)
  @cache[start_index] ||= {}
  
  cached_value = @cache[start_index][end_index]
  return cached_value if cached_value

  @cache[start_index][end_index] = find(start_index, end_index)
end

def find(start_index, end_index)
  if start_index == end_index
    1
    
  elsif end_index < start_index
    0
  
  elsif @str[start_index] == @str[end_index]
    check(start_index + 1, end_index - 1) + 2

  else
    next_start_index = start_index + 1
    while @str[start_index] == @str[next_start_index]
      next_start_index += 1
    end

    previous_end_index = end_index - 1
    while @str[end_index] == @str[previous_end_index]
      previous_end_index -= 1
    end

    [ 
      check(start_index, previous_end_index), 
      check(next_start_index, end_index) 
    ].max
  end
end