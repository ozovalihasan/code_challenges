# @param {Integer} num
# @return {Integer}
def maximum69_number(num)
  num = num.to_s
  num.match(/6/) do |match| 
    num[ match.end(0) - 1 ] = "9" 
  end

  num.to_i
end