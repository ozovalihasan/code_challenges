# @param {Integer} low
# @param {Integer} high
# @return {Integer[]}
def sequential_digits(low, high)
  low_str = low.to_s 
  high_str = high.to_s 

  start_num = low_str[0].to_i
  result = []
  low_str.size.upto(high_str.size) do |length|
    diff = Array.new(length, 1).join.to_i

    num = (start_num...(start_num + length)).to_a.join.to_i
    num -= diff
    while ((num + diff).to_s.size == length) && (num + diff).to_s[-1].to_i != 0
      num += diff
      result << num
    end

    start_num = 1
  end

  result.select { |num| num.between?(low, high) }
end
