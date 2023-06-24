# @param {Integer[][]} items1
# @param {Integer[][]} items2
# @return {Integer[][]}
def merge_similar_items(items1, items2)
  (items1 + items2).each_with_object(Hash.new(0)) { |(key, val), result| result[key] += val }.sort
end