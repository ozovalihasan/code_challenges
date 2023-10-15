MODULO = (10**9) + 7

# @param {Integer} steps
# @param {Integer} arr_len
# @return {Integer}
def num_ways(steps, arr_len)
  @max_index = arr_len - 1
  @memo = Array.new(steps + 1) { [] }
  check_step(steps, 0)
end

def check_step(steps, index)
  return @memo[steps][index] if @memo[steps][index]

  if steps.zero?
    return @memo[steps][index] = index.zero? ? 1 : 0
  end

  steps -= 1
  result = check_step(steps, index)
  result = (result + check_step(steps, index - 1)) % MODULO if index.positive?
  result = (result + check_step(steps, index + 1)) % MODULO if index < @max_index

  @memo[steps + 1][index] = result
end
