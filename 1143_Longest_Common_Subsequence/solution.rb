# @param {String} text1
# @param {String} text2
# @return {Integer}
def longest_common_subsequence(text1, text2)
  
  indices = {}
  text1.each_char.with_index { |char1, index1| ( indices[char1] ||= [] ) << index1 }
  indices.transform_values!(&:reverse)
  
  result = []
  text2.each_char do |char2|
    
    indices[char2]&.each do |index1|
      index = result.bsearch_index { |val| val >= index1 }
      
      if index.nil? 
        result << index1 
      elsif result[index] > index1
        result[index] = index1 
      end
    
    end

  end

  result.size
end


"deabccadeaddecc"
"abadecdecc"



# {
#   "d"=>[0, 7, 10, 11], "e"=>[1, 8, 12], 
#   "a"=>[2, 6, 9], "b"=>[3], "c"=>[4, 5, 13, 14]
# }

# 2 3 6 0 1 4 7 8 5 13

# [2 6 9]
# [3]
# [6 9]
# [0 7 10 11]
# [1 8 12]
# [4 5 13 14]
# [7 10 11]
# [8 12]
# [5 13 14]
# [13 14]

# [2, 1]
# [3, 2], [2, 1]
# [6, 3], [3, 2], [2,1]
# [6, 3], [3, 2], [7,4]
# [6, 3], [3, 2], [7,4], [8, 5], [0, 1]
# [6, 3], [3, 2], [7,4], [8, 5], [0, 1], [13,4], [4,3],[13, 6],[4,2]
# [6, 3], [3, 2], [7,4], [8, 5], [0, 1], [13,4], [4,3],[13, 6],[4,2], [7,4], [10, 6], [7, 2]

# 0 1 2 3 4 5 8 9
