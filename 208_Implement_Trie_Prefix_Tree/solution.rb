class Trie
  def initialize()
    @root = NodeTrie.new
  end


=begin
  :type word: String
  :rtype: Void
=end
  def insert(word)
    word = word.split("")
    cursor = @root

    while char = word.shift
      cursor = (cursor.chars[char] ||= NodeTrie.new)
    end
    
    cursor.word = true if word.empty?
  end


=begin
  :type word: String
  :rtype: Boolean
=end
  def search(word)
    cursor = check_nodes(word)

    cursor ? cursor.word : false
  end


=begin
  :type prefix: String
  :rtype: Boolean
=end
  def starts_with(prefix)
    check_nodes(prefix) ? true : false
  end

  private
  
  def check_nodes(prefix)
    prefix = prefix.split("")
    cursor = @root
    
    while char = prefix.shift
      cursor = cursor.chars[char]
      
      break if cursor.nil?
    end

    cursor
  end
end

# Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)

class NodeTrie
  attr_accessor :chars, :word
  def initialize(chars = {}, word = false)
    @chars = chars
    @word = word
  end
end
