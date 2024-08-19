# @param {String} s
# @param {String} t
# @return {String}
def min_window(s, t)

  hash_t = t.each_char.tally
  
  hash = Hash.new([])
  
  hash_t.keys.each do |key|
    hash[key] = []
  end
  
  s.each_char.with_index do |char, index|
    hash[char] << index
  end

  result = Hash.new([])
  hash_t.each do |key, value|
    result[key] = hash[key][0...value]
    return "" if result[key].size < value
  end

  max = result.values.map(&:max).max
  min = result.values.map(&:min).min
  result_last = {max: max, min: min, size: max-min}
  
  s.each_char.with_index do |char, index|
    unless hash_t[char].nil?
      removed = result[char].shift
      result[char] << index
      next unless removed == min
      max = result.values.map(&:max).max
      min = result.values.map(&:min).min
      if max-min < result_last[:size]
        result_last = {max: max, min: min, size: max-min}
      end
    
    end
        
  end
  s[result_last[:min]..result_last[:max]]
end
