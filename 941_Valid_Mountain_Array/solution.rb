# @param {Integer[]} arr
# @return {Boolean}
def valid_mountain_array(arr)
  return false unless arr[1] && arr.first < arr[1] && arr[-2] > arr.last

  index = 0
  arr << Float::INFINITY

  loop do 
    arr[index] < arr[index+1] ? index += 1 : break
  end

  loop do
    arr[index] > arr[index+1] ? index += 1 : break
  end

  index == (arr.size - 2)
end