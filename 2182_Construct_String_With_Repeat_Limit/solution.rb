# @param {String} str
# @param {Integer} repeat_limit
# @return {String}
def repeat_limited_string(str, repeat_limit)
  result = ''
  counts = str.chars.tally.sort_by(&:first)

  loop do
    break if counts.empty?

    char, count = counts.pop
    used_count = [repeat_limit, count].min
    result << (char * used_count)
    count -= used_count

    next if count.zero?
    break if counts.empty?

    result << counts.last[0]

    if counts.last[1] == 1
      counts.pop
    else
      counts.last[1] -= 1
    end

    counts << [char, count]
  end

  result
end
