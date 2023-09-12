# @param {String} s
# @return {Integer}
def min_deletions(s)
  char_counts = s.chars.tally
  
  frequencies = []
  char_counts.values.tally.each {|num, count| frequencies[num] = count}

  total = 0
  necessary_change = 0

  (frequencies.size - 1).downto(1) do |index|
    frequency = frequencies[index]

    if frequency.nil?
      necessary_change -= 1 if necessary_change > 0
    elsif frequency > 1
      necessary_change += frequency - 1
    end

    total += necessary_change
  end

  total
end