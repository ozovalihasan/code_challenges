# @param {Integer} n
# @return {Integer}
def num_squares(n)
  @found = {0 => 0}
  check_num(n)
end

def check_num(num)
  return @found[num] if @found[num]

  max = Math.sqrt(num).floor()
  result = []
  
  max.downto(1) do |counter|
    result << ((num  / ( counter ** 2 )) + check_num( num % (counter ** 2) ))
  end

  @found[num] = result.min
end
