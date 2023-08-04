# @param {Integer[][]} flowers
# @param {Integer[]} people
# @return {Integer[]}
def full_bloom_flowers(flowers, people)
  flowers_size = flowers.size
  start_indices = flowers.map(&:first).sort
  end_indices = flowers.map(&:last).sort

  people.map do |num|
    (
      start_indices.bsearch_index {|start_index| start_index > num} || flowers_size
    ) - (
      end_indices.bsearch_index {|end_index| end_index >= num} || flowers_size
    )
  end
end