# @param {String} dominoes
# @return {String}
def push_dominoes(dominoes)
  
  splitted_dominoes = dominoes.scan(/R|L|\.+/)
  return splitted_dominoes.first if splitted_dominoes.size == 1
  result = ""

  if splitted_dominoes.first[0] == "." && splitted_dominoes[1] == "L"
    result << "L" * splitted_dominoes.first.size
  else
    result << splitted_dominoes.first
  end

  splitted_dominoes.each_cons(3) do |previous_chars, chars, next_chars, index|
    if chars == "R" || chars == "L"
      result << chars
    elsif previous_chars == next_chars
      result << previous_chars * chars.size
    elsif previous_chars == "L" && next_chars == "R"
      result << chars
    elsif previous_chars == "R" && next_chars == "L"
      result << ("R" * (chars.size / 2)) + (chars.size.even? ? "" : ".") + ("L" * (chars.size / 2))
    end
  end

  if splitted_dominoes.last[0] == "." && splitted_dominoes[-2] == "R"
    result << "R" * splitted_dominoes.last.size
  else
    result << splitted_dominoes.last
  end

  result
end
