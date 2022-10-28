# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  strs.group_by { |str| str.unpack("c*").sort.pack("c*") }.values
end