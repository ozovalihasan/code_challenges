# @param {String[]} words
# @return {Integer}
def longest_str_chain(words)
  @next_chain = {}
  words_set = words.to_set

  words.each do |word|
    clone_word = word.clone
    clone_word[0] = ""
    
    @next_chain[word] = Set.new
    @next_chain[word] << clone_word.clone if words_set.include? clone_word
    
    1.upto(word.size - 1) do |index|
      clone_word[index - 1] = word[index - 1]
      @next_chain[word] << clone_word.clone if words_set.include? clone_word
    end
  end
  
  @memo = {}
  words.map {|word| check_word(word) }.max
end

def check_word(word)
  @memo[word] ||= (
                    @next_chain[word]
                      .map {|next_word| check_word(next_word) + 1}
                      .max || 1
                  )
end