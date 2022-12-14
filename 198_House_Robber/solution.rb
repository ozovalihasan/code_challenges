# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  skipped_house = 0
  waited_house = 0
  entered_house = 0
  
  nums.each do |house_val|
    skipped_house = [skipped_house, waited_house].max
    waited_house = entered_house
    entered_house = skipped_house + house_val
  end

  [skipped_house, waited_house, entered_house].max
end