# @param {Integer} n
# @return {Integer}
def tribonacci(n)
  arr = [0,1,1]

  3.upto(n) { |num| arr << arr.last(3).sum }

  arr[n]
end