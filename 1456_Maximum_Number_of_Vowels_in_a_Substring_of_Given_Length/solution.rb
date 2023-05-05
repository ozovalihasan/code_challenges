# @param {String} s
# @param {Integer} k
# @return {Integer}
VOWELS = {'a' => true, 'e' => true, 'i' => true, 'o' => true, 'u' => true }

def max_vowels(s, k)
  vowels_count = s[0...k].count(VOWELS.keys.join)
  max_count = vowels_count
  s_rest = s[k..]
  s_rest.each_char.with_index do |char, index|
    vowels_count -= 1 if VOWELS[ s[index] ]
    vowels_count += 1 if VOWELS[ char ]

    max_count = vowels_count if max_count < vowels_count 
    return max_count if max_count == k
  end

  max_count
end