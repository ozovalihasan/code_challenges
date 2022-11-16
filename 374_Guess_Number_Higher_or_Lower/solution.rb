# The guess API is already defined for you.
# @param num, your guess
# @return -1 if num is higher than the picked number
#          1 if num is lower than the picked number
#          otherwise return 0
# def guess(num)

def guessNumber(n)
  right = n
  left = 0
  selected_num = (right + left) / 2

  loop do
    result = guess(selected_num)
    if  result == 1
      left = selected_num
      selected_num = (right + left) / 2 + 1
    elsif result.zero?
      return selected_num
    else
      right = selected_num
      selected_num = (right + left) / 2 
    end
    
  end

  selected_num
end

###############
## 2. solution(simpler one)
###############
# def guessNumber(n)
# (1..n).bsearch {|num| guess(num)}
# end

def guess_check_number(n, picked)
  @picked = picked
  guessNumber(n)
end

def guess(num)
  @picked <=> num
end