# @param {Integer} n
# @return {Integer}
def binary_gap(n)
  n = n.to_s(2);
  distance = 0;
  last_index = 0;
  
  n.each_char.with_index do |char, index|
    if char == "1" 
      distance = index - last_index if (index - last_index) > distance 
      last_index = index
    end
  end
  
  distance
end
