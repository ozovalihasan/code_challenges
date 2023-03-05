# @param {Integer[]} arr
# @return {Integer}
def min_jumps(arr)
  hash = {}
  arr.each_with_index { |num, index| (hash[num] ||= []) << index }
  
  max_step = hash.size * 2
  
  last_index = arr.size - 1
  indices = [0]
  jump = 0
  checked = []

  loop do
    return jump if indices.include? last_index

    indices = indices.flat_map do |index|
                        if checked[index]
                          []
                        else
                          checked[index] = true
                          hash[arr[index]].last(max_step) << index + 1 << index - 1
                        end
                      end.uniq
              
    jump += 1
  end
end