# Solution #1
# @param {Integer} n
# @return {String}
def count_and_say(n)
  return '1' if n == 1

  found = count_and_say(n - 1)
  result = ''
  count = 0
  previous_char = ''
  found.chars.each do |char|
    unless previous_char == char
      result << count.to_s << previous_char unless previous_char.empty?
      count = 0
      previous_char = char
    end

    count += 1
  end

  result << count.to_s << previous_char

  result
end

# Solution #2
# # @param {Integer} n
# # @return {String}
# def count_and_say(n)
#   return "1" if n == 1
#   found = count_and_say(n - 1)
#   nums_chunks = found.gsub(/(\d)\1*/)
#   nums_chunks.map {|numbers| numbers.size.to_s + numbers[0]}.join
#
# end

# Solution #3
# @param {Integer} n
# @return {String}
# def count_and_say(n)
#   return "1" if n == 1
#   found = count_and_say(n - 1)
#   found = found.chars.chunk_while { |prev, curr| curr == prev}

#   found.map {|numbers| numbers.size.to_s + numbers.first}.join
# end
