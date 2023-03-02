# @param {Character[]} chars
# @return {Integer}
def compress(chars)
  count = 1

  (chars.size - 1).downto(1) do |index|
    unless chars[index] == chars[index - 1]
      update_chars(chars, index, count)      

      count = 0
    end

    count += 1 
  end

  update_chars(chars, 0, count)      
  chars.size
end

def update_chars(chars, index, count)
  chars[index + 1...index + count] = count.to_s.split("") if count != 1
end