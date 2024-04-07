# @param {String} input
# @return {Integer}
def length_longest_path(input)
  input = input.split("\n")
  nested_input = []
  counts = [0]
  max = 1
  
  input.each do |sub_path|
    count = sub_path.count("\t")
    counts[count + 1] = counts[count] + sub_path.size - count + 1
    max = counts[count + 1] if max < counts[count + 1] && sub_path.include?('.')
  end

  max - 1
end