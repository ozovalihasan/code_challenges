# @param {String} str
# @return {String}
def longest_nice_substring(str)
  counts_str = str.chars.tally

  unpairs = counts_str.keys.reject {|chr| (chr == chr.upcase) ? counts_str[chr.downcase] : counts_str[chr.upcase]}
  return str if unpairs.size.zero?
  return "" if unpairs.size == counts_str.size
  
  substrings = str.split(Regexp.union(unpairs))
  substrings.map { |substr| longest_nice_substring(substr) }.max_by(&:size)
end