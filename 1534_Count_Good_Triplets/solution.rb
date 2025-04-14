# @param {Integer[]} arr
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def count_good_triplets(arr, int1, int2, int3)
  arr.combination(3).count do |num1, num2, num3|
    (num1 - num2).abs <= int1 && (num2 - num3).abs <= int2 && (num1 - num3).abs <= int3
  end
end