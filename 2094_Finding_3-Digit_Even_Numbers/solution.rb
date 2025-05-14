# @param {Integer[]} digits
# @return {Integer[]}
def find_even_numbers(digits)
  return [] if digits.none?(&:even?)
  counts = digits.tally
  counts.default = 0

  results = []
  1.upto(9) do |first_digit|
    next if counts[first_digit] == 0

    counts[first_digit] -= 1
    0.upto(9) do |second_digit|
      next if counts[second_digit] == 0
      
      counts[second_digit] -= 1
      (0..8).step(2) do |third_digit|
        next if counts[third_digit] == 0

        results << (first_digit * 100 + second_digit * 10 + third_digit)
      end
      counts[second_digit] += 1

    end
    counts[first_digit] += 1

  end

  results
end