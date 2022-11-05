# @param {Character[][]} board
# @param {String[]} words
# @return {String[]}
def find_words(board, words)

  # Let's store the neighbor cells as a hash 'board_two'.
  # I'm using hash instead of array because checking whether a value is exist or not is very fast in a hash ( O(1) for a hash, 0(n) for an array ).
  # If our board is 
  # [ 
  #   ["o","a","a"],
  #   ["e","t","a"],
  #   ["i","h","k"],
  # ]
  # 
  # the result is 
  # {"oe"=>true, "at"=>true, "aa"=>true, "ei"=>true, "th"=>true, "ak"=>true, "oa"=>true, "et"=>true, "ta"=>true, "ih"=>true, "hk"=>true}
  
  # We stored them because if we need to search the word "oet", board_two hash should have "oe", "eo", "et" and "te".If not, we can remove them from the 'words' array.
  # Their values are not important. We will check only the keys.

  board_two = {}

  board.each_cons(2) do |row1,row2|
    0.upto(row1.size - 1) do |index|
      board_two[row1[index]+row2[index]] = true  
    end
  end

  board.each do |row|
    row.each_cons(2) do |item1, item2|
      board_two[ item1 + item2] = true  
    end
  end
  
  # What if the word has only one character? Let's say the word is "z". We can check it by using another hash 'board_one'.
  # The hash is {"o"=>["o"], "a"=>["a", "a", "a"], "e"=>["e"], "t"=>["t"], "i"=>["i"], "h"=>["h"], "k"=>["k"]}.
  # Their values are not important. We will check only whether the keys are exist or not.

  board_one = board.flatten.flatten.group_by(&:itself)

  filtered_words = []
  trie = Trie.new
  
  words.each_with_index do |word|
    
    next if word.split("").each_cons(2).any? {|item1, item2| !(board_two[ item1 + item2 ] || board_two[item2 + item1]) } 
    next if word.size == 1 && board_one[word].nil?
    
    # Our hashes are ready, now we are checking each word. If their necessary parts cannot be found in 'board_one' and 'board_two' hashes, we are skipping them.
    # Then, if they satisfied these two conditions, they are stored in a trie.

    filtered_words << word.clone
    if word.match(/^(.)\1*/).offset(0)[1] > word.reverse.match(/^(.)\1*/).offset(0)[1] 
      trie.add_word(word.reverse)
    else
      trie.add_word(word)
    end

  end

  # Words are filtered because if all words are checked one by one, it takes a long time. 

  @size = filtered_words.size

  # The size of filtered words are stored because if all words are found on the board, all operations can be stopped immediately.

  root = trie.root
  @result = []
  board.each_with_index do |row, index|
    row.each_with_index do |char, index2|
      @found = false
      if root.chars[char]
        check(board, root, index, index2, 0)
      end
    end
  end

  @result.map do |word|
    filtered_words.include?(word) ? word : word.reverse
  end

end

def check(board, trie_node, index, index2, step)
  node = trie_node.chars[ board[index][index2] ]
  # p trie_node

  # Not to use same characters, the used characters are changed with "#" and the original ones are stored.
  char = board[index][index2]
  board[index][index2] = "#"
  
  # We are checking possible 4 directions.
  step += 1
  if index > 0 && node.chars[ board[index-1][index2] ]
    check(board, node, index-1, index2, step)
  end
  if board[index+1] && node.chars[ board[index+1][index2] ]
    check(board, node, index+1, index2, step)
  end
  if index2 > 0 && node.chars[ board[index][index2-1] ]
    check(board, node, index, index2-1, step)
  end
  if node.chars[ board[index][index2+1] ]
    check(board, node, index, index2+1, step)
  end

  
  
  if node.word
    @result << node.word 
    node.word = nil
    @found = true
  end

  if @found
    trie_node.chars.delete( char ) if trie_node.chars[char].chars.size.zero?
    @last_letter = char

    unless node.chars.size.zero?
      @found = false
    end
  end

  # The stored size is used here to stop all operations. Also, we are using uniq method because same word can be added multiple times
  return if @result.uniq.size == @size
  
  # When all possible directions are checked, the used cell is updated with the original ones.
  board[index][index2] = char
end

class NodeTrie
  attr_accessor :chars, :word
  def initialize(chars = {}, word = nil)
    @chars = chars
    @word = word
  end
end

class Trie
  attr_reader :root
  def initialize
    @root = NodeTrie.new
  end

  def add_word(word)
    cursor = @root
    word_clone = word.clone
    while word_clone[0]
      cursor.chars ||= {}
      cursor.chars[word_clone[0]] ||= NodeTrie.new
      cursor = cursor.chars[word_clone[0]] 
      word_clone[0] = ""
    end
    if word_clone == ""
      cursor.word = word
    end
  end
end
