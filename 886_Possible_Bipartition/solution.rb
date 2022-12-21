# @param {Integer} n
# @param {Integer[][]} dislikes
# @return {Boolean}
def possible_bipartition(n, dislikes)
  dislikes = dislikes.each_with_object({}) do |(user1, user2), hash|
    (hash[user1] ||= []) << user2
    (hash[user2] ||= []) << user1
  end 

  used = [[], []]
  empty_arr = []
  counter = 0
  
  until dislikes.empty?
    used.each(&:clear)
    counter += 1
    current = [ dislikes.keys.min ]
    used[counter % 2].concat current

    until current.empty?
      counter += 1
      current.map! {|user| dislikes.delete(user) || empty_arr}.flatten!
      used[counter % 2].concat current
    end  

    return false unless (used[0] & used[1]).empty?
  end

  true
end