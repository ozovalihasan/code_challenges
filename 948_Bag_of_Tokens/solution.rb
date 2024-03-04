# @param {Integer[]} tokens
# @param {Integer} power
# @return {Integer}
def bag_of_tokens_score(tokens, power)
  tokens = tokens.sort
  score = 0
  max_score = 0

  until tokens.empty?
    if power >= tokens.first
      power -= tokens.shift
      score += 1
      max_score = score if score > max_score
    else 
      power += tokens.pop
      score -= 1
  
      break if score.negative?
    end
  end

  max_score
end
