# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  haystack = haystack.split("")
  needle = needle.split("")
  
  needle_length = needle.length
  
  0.upto(haystack.length - needle_length) do |index|
    return index if haystack[index] == needle.first && haystack.slice(index, needle_length) == needle
  end

  -1
end