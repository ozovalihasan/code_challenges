# @param {Integer[]} target
# @param {Integer} n
# @return {String[]}
def build_array(target, n)
  counter = 0

  target.map do |num|
    counter += 1

    result = %w[Push Pop] * (num - counter)
    result << 'Push'

    counter = num
    result
  end.flatten
end
