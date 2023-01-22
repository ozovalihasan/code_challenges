# @param {String} s
# @return {String[][]}
def partition(s)
  palindromes_starting_from = set_palindromes(s)
  
  @max_size = s.size
  @result = []
  starting_index = 0
  find_result(
    starting_index, 
    [], 
    palindromes_starting_from
  )
  @result
end

def find_result(index, array, palindromes_starting_from)
  return @result << array if index == @max_size

  palindromes_starting_from[index].each do |str|
    find_result(
      index + str.size, 
      array.clone << str, 
      palindromes_starting_from
    )
  end
end

def set_palindromes(s)
  
  s.size.times.with_object({}) do |index, palindromes_starting_from|
    palindromes_starting_from[index] = []

    [0, 1].each do |difference|
      
      left_index = index
      right_index = index + difference

      while s[left_index] == s[right_index] && left_index >= 0
        palindromes_starting_from[left_index] << s[left_index..right_index]
        
        left_index -= 1
        right_index += 1
      end
    end

  end
end