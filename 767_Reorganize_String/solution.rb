# @param {String} s
# @return {String}
def reorganize_string(s)
  return s if s.size == 1
  return "" if s.chars.tally.values.max > (s.size + 1) / 2

  @chars_with_count = s.chars.tally.sort_by(&:last)
  @result = ""
  
  if @chars_with_count[-1].last - 1 >= @chars_with_count[-2].last
    use_char(-1)
  end

  while @chars_with_count[-1].last > @chars_with_count[-2].last
    use_char(0)
    use_char(-1)
  end

  chars = @chars_with_count.map(&:first).join
  @chars_with_count.map(&:last).inject(0) do |last_used_count, count|
    @result << chars * (count - last_used_count)
    chars[0] = ""
    count
  end

  @result
end

def use_char(index)
  @result << @chars_with_count[index].first        
  
  if @chars_with_count[index].last == 1
    @chars_with_count.shift 
  else
    @chars_with_count[index][-1] -= 1
  end
end