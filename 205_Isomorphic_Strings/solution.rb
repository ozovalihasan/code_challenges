# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  (hash_chars(s) - hash_chars(t)).empty?
end

def hash_chars(str)
  str.each_char.with_index.with_object({}) {|(char, index), hash| (hash[char] ||= []) << index }.values
end