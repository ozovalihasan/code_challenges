# @param {Integer[]} arr
# @return {Integer}
def find_special_integer(arr)
  necessary_count = arr.length / 4
  arr.each_with_index do |num, index|
    return num if arr[index + necessary_count] == num
  end
end
