# @param {String} str
# @return {Integer}
def minimum_length(str)
  chunks = str.chars.chunk_while {|first, second| first == second}.to_a
  while chunks.first.first == chunks.last.first && chunks.size > 1
    chunks.pop
    chunks.shift
  end

  return 0 if chunks.empty?
  
  chars = chunks.flatten(1)
  if chars.last == chars.first
    chars.size == 1 ? 1 : 0
  else
    chars.size
  end
end