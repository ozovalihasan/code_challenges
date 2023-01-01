# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
  extract_numeric_pattern( s.split(" ") ) == extract_numeric_pattern( pattern.chars )
end

def extract_numeric_pattern(arr)
  arr.each_with_index.with_object({}) { |(item, index), hash| ( hash[item] ||= [] ) << index }.values
end