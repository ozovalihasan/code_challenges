# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {Integer}
def ladder_length(begin_word, end_word, word_list)
  return 0 unless word_list.include? end_word

  words = build_possible_words(word_list)

  graph = build_graph(begin_word, words, word_list)

  find_shortest_path_on_graph(begin_word, end_word, graph)
end

def build_possible_words(word_list)
  possible_words = {}
  max_index = word_list.first.length - 1
  word_list.each do |word|
    0.upto max_index do |index|
      new_word = word.clone
      new_word[index] = '.'
      possible_words[new_word] ||= []
      possible_words[new_word] << word
    end
  end

  possible_words
end

def build_graph(begin_word, words, word_list)
  graph = {}
  max_index = begin_word.length - 1
  (word_list + [begin_word]).each do |word|
    graph[word] = []
    0.upto max_index do |index|
      new_word = word.clone
      new_word[index] = '.'

      graph[word].concat words[new_word] if words[new_word]
    end
  end

  graph.each do |key, value|
    graph[key] = value.uniq - [key]
  end

  graph
end

def find_shortest_path_on_graph(begin_word, end_word, graph)
  check = [begin_word]
  used = { begin_word => true }
  count = 1

  until (check.include? end_word) || check.empty?
    next_check = []
    check.each do |word|
      next_check.concat graph[word]
      used[word] = true
    end

    next_check.reject! { |word| used[word] }
    check = next_check.uniq
    count += 1
  end

  return 0 if check.empty?

  count
end
