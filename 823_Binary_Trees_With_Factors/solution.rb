MODULO = 10**9 + 7
# @param {Integer[]} arr
# @return {Integer}
def num_factored_binary_trees(arr)
  @arr = arr
  @memo = {}
  @checked = {}
  arr.sum do |num|
    check_num(num)
  end % MODULO
  
end

def check_num(num)
  return @memo[num] if @memo[num] 
  selected = @arr.select {|checked_num| checked_num < num && (num % checked_num == 0)}

  @memo[num] = (selected.sum {|checked_num| @arr.include?(num / checked_num) ? check_num(num / checked_num) * check_num(checked_num) : 0} + 1) % MODULO
end
