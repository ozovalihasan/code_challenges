# @param {String[]} words
# @param {String} target
# @return {Integer}

# I couldn't solve the challenge

def num_ways(words, target)
  @letters_frequency = {}
  @result = 0
  
  words.each do |word|
    word.each_char.with_index do |letter, index|
      @letters_frequency[letter] ||= Hash.new(0)
      @letters_frequency[letter][index] += 1
    end
  end

  @letters_frequency.transform_values! {|value| value.sort_by(&:first)}

  @cache = []

  0.upto(target.size) do |index|
    @cache[index] = {}
  end
  (check target, 0, -1) % (10**9 + 7) 
  
end

def check target, target_index, word_previous_index
  cached_sub_result = @cache[target_index][word_previous_index] 
  return cached_sub_result if cached_sub_result
  
  return @cache[target_index][word_previous_index]  = 1 unless target[target_index]

  sub_result = 0

  (@letters_frequency[target[target_index]] || {}).each do |index, count|
    next unless index > word_previous_index

    result = (check target, target_index + 1, index)
    break if result.zero?

    sub_result += result * count
  end

  @cache[target_index][word_previous_index]  = sub_result % (10**9 + 7) 
end