# @param {Integer} sx
# @param {Integer} sy
# @param {Integer} fx
# @param {Integer} fy
# @param {Integer} t
# @return {Boolean}
def is_reachable_at_time(sx, sy, fx, fy, t)
  return false if sx == fx && sy == fy && t == 1

  [(fx - sx).abs, (fy - sy).abs].max <= t 
end
