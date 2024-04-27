# @param {String} ring
# @param {String} key
# @return {Integer}
def find_rotate_steps(ring, key)
  indices = {}
  ring.each_char.with_index do |char, index|
    (indices[char] ||= []) << index
  end

  previous_indices = [0]
  previous_char = ""
  size = ring.size
  result = Array.new size, 0
  key.each_char do |char|
    next if previous_char == char

    char_indices = indices[char]
    char_indices.each do |char_index|
      min_result = previous_indices.map do |previous_index|
        diff = (char_index - previous_index).abs
        min = [diff, (diff - size).abs].min
        result[previous_index] + min
      end.min
      result[char_index] = min_result
    end
    previous_char = char
    previous_indices = char_indices
  end

  previous_indices.map {|index| result[index]}.min + key.size
end