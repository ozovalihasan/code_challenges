# @param {Integer[]} mountain
# @return {Integer[]}
def find_peaks(mountain)
  mountain.each_cons(3).filter_map.with_index do |(first, second, third), index|
    index + 1 if second > first && second > third
  end 
end
