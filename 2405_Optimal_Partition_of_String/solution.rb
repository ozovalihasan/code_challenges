# @param {String} s
# @return {Integer}
def partition_string(s)
  chars = []
  partitions_count = 1
  
  s.each_char do |char|
    if chars.include? char
      chars.clear
      partitions_count += 1 
    end

    chars << char
  end

  partitions_count
end