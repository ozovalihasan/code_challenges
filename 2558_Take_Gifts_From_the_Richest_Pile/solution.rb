# @param {Integer[]} gifts
# @param {Integer} total_second
# @return {Integer}
def pick_gifts(gifts, total_second) 
  gifts.sort!

  total_second.times do
    gift = Integer.sqrt(gifts.pop)
    
    index = gifts.bsearch_index { |checked_gift| checked_gift >= gift } || gifts.size
    gifts.insert(index, gift)
  end

  gifts.sum
end
