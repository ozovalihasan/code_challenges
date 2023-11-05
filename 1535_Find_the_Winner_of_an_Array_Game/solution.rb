# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def get_winner(arr, k)
  max = arr.first
  counter = -1

  arr.each do |num|
    if num > max
      max = num
      counter = 0
    end

    counter += 1

    return max if counter == k
  end

  max
end
