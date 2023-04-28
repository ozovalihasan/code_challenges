# @param {String[]} strs
# @return {Integer}
def num_similar_groups(strs)
  
  strs.map! do |str|
    str = str.split("").map(&:ord)
  end
  
  @connected = strs.each_with_object({}) {|str, connected| connected[str] = [] }
               
  max_index = strs.size.pred
  strs.each_with_index do |str1, index1|
    index1.next.upto max_index do |index2|
      compare(str1, strs[index2])
    end
  end
  
  count_groups
end

def compare(str1, str2)
  counter = 0

  str1.each_with_index do |char1, char_index|
    if char1 != str2[char_index]
      counter += 1 

      break if counter > 2
    end
  end

  if counter == 2
    @connected[str1] << str2
    @connected[str2] << str1
  end
end

def count_groups
  counter = 0

  until @connected.empty?
    counter += 1
    connected_strs = [ @connected.keys.first ]
    
    until connected_strs.empty? 
      connected_strs.map! {|str| @connected.delete(str) }
      connected_strs.compact!
      connected_strs.flatten!(1)
    end
  end
  
  counter
end