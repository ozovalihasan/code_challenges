# @param {Integer[][]} pairs
# @return {Integer[][]}
def valid_arrangement(pairs)
  return pairs if pairs.size == 1

  @pairs = pairs

  counts = calculate_counts
  start_point = find_start_point(counts)
  @left_val_indices = build_left_val_indices

  find_result(start_point).reverse
end

# Calculate the counts of entry and leaving points
def calculate_counts
  counts = Hash.new(0)
  @pairs.each do |entry_point, leaving_point|
    counts[entry_point] += 1
    counts[leaving_point] -= 1
  end
  counts
end

def find_start_point(counts)
  counts.max_by(&:last).first
end

def build_left_val_indices
  left_val_indices = Hash.new { |hash, key| hash[key] = [] }
  @pairs.each_with_index do |(left_val, _), index|
    left_val_indices[left_val] << index
  end
  left_val_indices
end

def find_result(left_val)
  return [] if @left_val_indices[left_val].empty?

  index = @left_val_indices[left_val].pop
  result = find_result(@pairs[index].last) << @pairs[index]

  return result if @left_val_indices[left_val].empty?

  result + find_result(left_val)
end
