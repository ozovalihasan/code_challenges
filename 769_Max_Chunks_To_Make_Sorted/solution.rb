# @param {Integer[]} arr
# @return {Integer}
def max_chunks_to_sorted(arr)
  sorted_arr = arr.sort

  count = 0
  cursor_sorted = 0
  cursor = 0
  checked = {}

  while cursor < arr.size
    checked[arr[cursor]] = true
    cursor += 1

    cursor_sorted += 1 while checked[sorted_arr[cursor_sorted]]
    count += 1 if cursor_sorted == cursor
  end

  count
end
