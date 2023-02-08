# @param {Integer[]} pushed
# @param {Integer[]} popped
# @return {Boolean}
def validate_stack_sequences(pushed, popped)
  arr = [] 
  popped.reverse!

  pushed.each do |num|
    arr << num
    while arr.last == popped.last
      arr.pop
      popped.pop
  
      return true if popped.empty?
    end
  end

  false
end