# @param {String} s
# @return {String}
def sort_string(s)
  char_counts = s.chars.tally
  result = []
  uniq_chars = char_counts.keys.sort

  count = 0
  until uniq_chars.empty?
    count += 1
    result.concat uniq_chars
    uniq_chars.reject! {|char| char_counts[char] <= count }

    break if uniq_chars.empty?

    count += 1
    result.concat uniq_chars.reverse
    uniq_chars.reject! {|char| char_counts[char] <= count }
  end

  result.join
end