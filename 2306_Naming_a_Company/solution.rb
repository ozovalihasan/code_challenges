# @param {String[]} ideas
# @return {Integer}
def distinct_names(ideas)
  ideas_hash = ideas.group_by {|idea| [idea[0], idea[1..]]}
  ideas_by_first_char = ideas.group_by{|idea| idea[0]}.values.map {|value| value.group_by {|idea| idea[1..]}.keys}
  
  result = 0

  ideas_by_first_char.each_with_index do |first_ideas, index|
    
    ideas_by_first_char[index + 1..].each do |second_ideas|
      result += (first_ideas - second_ideas).size * (second_ideas - first_ideas).size
    end

  end

  result * 2
end