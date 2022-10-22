# @param {String} s
# @param {Integer[][]} shifts
# @return {String}
def shifting_letters(s, shifts)
  arr = Array.new( s.length + 1, 0 )
  
  shifts.each do |start_index, end_index, step|
    arr[ start_index ] += step * 2 - 1
    arr[ end_index + 1] -= step * 2 - 1
  end

  change = 0
  s.each_char.with_index do |char, index|
    change += arr[index]
    s[index] = ((char.ord - 97 + change) % 26 + 97).chr
  end
  
end