# @param {String[]} words
# @param {Integer} max_width
# @return {String[]}
def full_justify(words, max_width)
  lines = [[words.first]]
  count = words.first.length
  
  words[1..].each do |word|
    if (count + 1 + word.length) <= max_width
      lines.last << word
      count += word.length + 1
    else
      lines << [word]
      count = word.length
    end
  end

  last_line = lines.pop
  
  lines = join_words_on_lines(lines, max_width)

  lines << ( last_line.join(" ") << (" " * (max_width - count)) )
  
  lines
end

def join_words_on_lines(lines, max_width)
  lines.map do |line|
    space_count = line.size - 1
    total_length = line.inject(0) {|total, word| total += word.length }
    total_space = max_width - total_length
    
    if space_count.positive?

      div, mod = total_space.divmod(space_count)
      line[..mod] = line[..mod].join(" " * (div + 1) ) 
      line = line.join(" " * div )
      
    else

      line = line.first + (" " * total_space)

    end

    line
  end
end