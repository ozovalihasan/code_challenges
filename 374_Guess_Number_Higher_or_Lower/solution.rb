# The guess API is already defined for you.
# @param num, your guess
# @return -1 if num is higher than the picked number
#          1 if num is lower than the picked number
#          otherwise return 0
# def guess(num)

def guessNumber(n)
    
end

def guess_check_number(n, picked)
  @picked = picked
  guessNumber(n)
end

def guess(num)
  @picked <=> num
end