# @param {String} s
# @param {Integer} k
# @return {String}
def orderly_queue(s, k)
  s_sorted = s.chars.sort

  if k == 1
    
    possible_words = []
    index = -1
    first_char = s_sorted.first
    while index = s.index(first_char, index + 1)
      possible_words << s[index..] + s[0...index]
    end

    result = possible_words.sort.first
    
  else

    result = s_sorted.join

  end 

  result
end