# @param {Integer[]} pref
# @return {Integer[]}
def find_array(pref)
  prev = pref.first
  res = [prev]

  1.upto(pref.size - 1) do |index|
    res << (prev ^ pref[index])
    prev = pref[index]
  end

  res
end
