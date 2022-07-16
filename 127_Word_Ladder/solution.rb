# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {Integer}
def ladder_length(begin_word, end_word, word_list)
  return 0 unless word_list.include? end_word

  words = {}
  word_list.each do |word|
    word.each_char.with_index do |_char, index|
      new_word = word.clone
      new_word[index] = "."
      if words[new_word]
        words[new_word] << word
      else
        words[new_word] = [word]
      end
    end
  end

  graph = {}

  (word_list + [begin_word]).each do |word|
    graph[word] = []
    word.each_char.with_index do |_char, index|
      new_word = word.clone
      new_word[index] = "."

      graph[word] += words[new_word] if words[new_word]
    end
  end

  graph.each do |key, value|
    graph[key] = value.uniq - [key]
  end

  check = [begin_word]
  used = { begin_word => true }
  count = 1
  until (check.include? end_word) || check.empty?
    next_check = []
    check.each do |word|
      check += graph[word]
      used[word] = true
    end
    check.reject! { |word| used[word] }
    check.uniq!
    count += 1
  end

  return 0 if check.empty?

  count
end
