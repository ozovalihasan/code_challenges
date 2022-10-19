# @param {String} s
# @return {String[]}
def find_repeated_dna_sequences(s)
  hash = Hash.new(0)
  
  0.upto(s.size - 10) do |index|
    hash[ s[index...index+10] ] += 1 
  end

  hash.keys.select {|key| hash[key] > 1}

end