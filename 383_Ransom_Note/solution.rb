# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  hash = Hash.new(0)
  magazine.each_char do |char|
    hash[char] += 1
  end
  
  ransom_note.each_char do |char|
    hash[char] -= 1
    return false if hash[char].negative?
  end

  true

end