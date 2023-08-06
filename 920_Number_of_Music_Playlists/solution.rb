# @param {Integer} n
# @param {Integer} goal
# @param {Integer} k
# @return {Integer}
MODULO = 10**9 + 7
def num_music_playlists(n, goal, k)
  if n == goal
    return (1..n).inject(:*) % MODULO
  end
  @n, @goal, @k = n, goal, k
  @used_nums_size = 0
  
  @memo = Array.new(goal + 1) {[]}
  ((n ** goal) % MODULO - check(0)) % MODULO
end

def check(step)
  if @memo[step][@used_nums_size]
    return @memo[step][@used_nums_size] 
  end

  unused_nums_size = @n - @used_nums_size
  if step == @goal
    return @memo[step][@used_nums_size] = unused_nums_size.zero? ? 0 : 1
  end
  
  if (unused_nums_size) > (@goal - step)
    return @memo[step][@used_nums_size] = (@n ** (@goal - step)) % MODULO
  end

  prev_size = step < @k ? step : @k

  result = @k.zero? ? 0 : (prev_size * (@n **(@goal - step - 1)) % MODULO)

  if unused_nums_size.positive?
    @used_nums_size += 1
    result += check(step + 1) * (unused_nums_size)
    @used_nums_size -= 1
    result %= MODULO
  end

  if (@used_nums_size - prev_size) > 0
    result += check(step + 1) * (@used_nums_size - prev_size) 
    result %= MODULO
  end
  
  @memo[step][@used_nums_size] = result % MODULO
end