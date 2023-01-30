# @param {Integer} n
# @return {Integer}
def tribonacci(n)
  arr = [0,1,1]

  3.upto(n) { arr << arr.last(3).sum }

  arr[n]
end