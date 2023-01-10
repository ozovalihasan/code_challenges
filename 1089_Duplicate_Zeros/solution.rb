# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
  
  (arr.size - 1).downto(0) do |index| 

    arr.insert(index, 0).pop if arr[index].zero? 
    
  end

end