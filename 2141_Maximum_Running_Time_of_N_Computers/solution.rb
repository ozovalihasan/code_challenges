# @param {Integer} n
# @param {Integer[]} batteries
# @return {Integer}
def max_run_time(n, batteries)
  batteries.sort!

  total_energy = batteries.shift(batteries.size - n).sum
  used_computers = 0
  batteries.map do |battery|
    total_energy += battery
    used_computers += 1
    total_energy / used_computers
  end.min
end