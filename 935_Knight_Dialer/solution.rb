MODULO = (10**9) + 7

# @param {Integer} nums
# @return {Integer}
def knight_dialer(nums)
  @memo = {}
  @rules = {
    0 => [4, 4],
    1 => [4, 2],
    2 => [1, 1],
    3 => [4, 2],
    4 => [0, 1, 1],
    5 => [],
    6 => [0, 1, 1],
    7 => [2, 4],
    8 => [1, 1],
    9 => [2, 4]
  }

  @rules.keys.sum { |cell| check(cell, nums - 1) } % MODULO
end

def check(cell, nums)
  return 1 if nums.zero?
  return @memo[[cell, nums]] if @memo[[cell, nums]]

  @memo[[cell, nums]] = @rules[cell].sum do |next_cell|
    check(next_cell, nums - 1)
  end % MODULO

  if nums.odd?
    @memo[[2, nums]] = @memo[[1, nums]] = @memo[[cell, nums]] if [1, 2].include? cell
  elsif nums.even?
    @memo[[0, nums]] = @memo[[4, nums]] = @memo[[cell, nums]] if [0, 4].include? cell
  end
  
  @memo[[cell, nums]]
end
