# @param {String} s1
# @param {String} s2
# @return {Integer}
def minimum_delete_sum(s1, s2)
  s1, s2 = s2, s1 if s1.length > s2.length 
  @str1 = s1.chars.map(&:ord)
  @str2 = s2.chars.map(&:ord)

  @indices2 = {}
  @str2.each_with_index do |char2, index|
    (@indices2[char2] ||= []) << index
  end

  @memo = Array.new(s1.size + 1) {[]}
  @str1.sum + @str2.sum - check(0, 0)
end

def check(index_start1, index_start2)
  return @memo[index_start1][index_start2] if @memo[index_start1][index_start2]

  max_result = 0
  index_start1.upto(@str1.size - 1) do |index1|
    char_num = @str1[index1]
    
    index2 = @indices2[char_num]&.bsearch {|index| index >= index_start2} 
    if index2
      result = check(index1 + 1, index2 + 1) + 2 * char_num
      max_result = result if result > max_result
    end
  end

  @memo[index_start1][index_start2] = max_result
end