# @param {String} str
# @return {Boolean}
def check_valid_string(str)
  @str = str
  @max_index = str.size - 1

  @checked = {}
  check_string(0, 0)
end

def check_string(index, counter)
  return @checked[[index, counter]] if @checked.key? [index, counter]
  return @checked[[index, counter]] = false if counter < 0

  start_counter = counter
  start_index = index
  
  index.upto(@max_index) do |checked_index|
    char = @str[checked_index]

    if char == "("
      counter += 1
    elsif char == ")"
      counter -= 1
      return @checked[[start_index, start_counter]] = false if counter < 0
    elsif char == "*"
      if check_string(checked_index + 1, counter + 1) || check_string(checked_index + 1, counter) || check_string(checked_index + 1, counter - 1)
        return @checked[[start_index, start_counter]] = true
      else
        return @checked[[start_index, start_counter]] = false 
      end
    end
  end
  
  @checked[[start_index, start_counter]] = counter.zero?
end