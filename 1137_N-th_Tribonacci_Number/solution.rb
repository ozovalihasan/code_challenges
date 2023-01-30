# @param {Integer} n
# @return {Integer}
def tribonacci(n)
  arr = [0,1,1]

  arr.size.upto(n) { arr << arr.last(3).sum }

  arr[n]
end