# @param {Integer[]} values
# @param {Integer[]} labels
# @param {Integer} num_wanted
# @param {Integer} use_limit
# @return {Integer}
def largest_vals_from_labels(values, labels, num_wanted, use_limit)
  values_with_labels = values.zip(labels).sort_by(&:first).reverse

  sum = 0
  used = Hash.new(0)
  values_with_labels.each do |val, label|
    if used[label] < use_limit
      used[label] += 1
      num_wanted -= 1
      sum += val
    end
    
    break if num_wanted.zero?
  end

  sum
end