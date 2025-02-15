# @param {Integer} num
# @return {Integer}
PUNISHMENT_NUMBERS = [
  1, 9, 10, 36, 45, 55, 82, 91, 99, 
  100, 235, 297, 369, 370, 379, 414, 
  657, 675, 703, 756, 792, 909, 918, 
  945, 964, 990, 991, 999, 1000
]
def punishment_number(num)
  index = PUNISHMENT_NUMBERS.bsearch_index { |punishment_num| punishment_num > num } || PUNISHMENT_NUMBERS.size
  PUNISHMENT_NUMBERS[...index].sum { |selected_num| selected_num * selected_num }
end
