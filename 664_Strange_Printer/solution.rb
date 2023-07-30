# @param {String} s
# @return {Integer}
def strange_printer(s)
  @s = s.gsub(/(.)\1*/, '\1').chars
  
  @memo = {}
  @indices = {}
  @s.each_with_index do |char, index|
    (@indices[char] ||= []) << index
  end
  
  check_str(0, @s.size - 1)
end

def check_str(start_index, end_index)
  return @memo[[start_index, end_index]] if @memo[[start_index, end_index]]
  return 0 if start_index > end_index
  
  char = @s[start_index]
  
  suitable_indices = @indices[char].select {|char_index| char_index.between?(start_index + 1, end_index) }
  sub_results = suitable_indices.map! do |char_index|
                  check_str(start_index + 1, char_index - 1) + check_str(char_index, end_index)
                end

  sub_results << ( check_str(start_index + 1, end_index) + 1 )
  @memo[[start_index, end_index]] = sub_results.min
end