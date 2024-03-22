# @param {String} target
# @return {Integer}
def min_flips(target)
  previous = "0"

  count = 0
  target.each_char do |char|
    count += 1 unless char == previous
    previous = char
  end

  count
end