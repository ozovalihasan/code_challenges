# @param {String[]} words
# @param {String} order
# @return {Boolean}
def is_alien_sorted(words, order)
  words.each_cons(2) do |first, second| 
    next if second.start_with? first
    return false if first.start_with? second

    index = 0
    index += 1 while second[index] == first[index]
      
    return false if order.index(first[index]) >  order.index(second[index])
    
  end 

  true
end