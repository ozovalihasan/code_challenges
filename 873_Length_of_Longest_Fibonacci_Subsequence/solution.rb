# @param {Integer[]} arr
# @return {Integer}
def len_longest_fib_subseq(arr)
  max_length = 0
  arr_set = arr.to_h { |num| [num, true] }
  arr.combination(2) do |(first, second)|
    count = 2
    sum = first + second
    while arr_set[sum]
      first, second = second, sum
      count += 1
      sum = first + second
    end

    max_length = count if count > max_length
  end

  max_length > 2 ? max_length : 0
end
