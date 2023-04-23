# @param {String} s
# @param {Integer} k
# @return {Integer}
def number_of_arrays(s, k)
  k_length = k.to_s.size
  results = Array.new(k_length, 0)
  results[-1] = 1
  modulo = (10**9 + 7)

  sum = results.sum
  (s.size - 1).downto(0) do |index|

    results << if s[index] == "0"
                0
              elsif s.slice(index, k_length).to_i <= k
                sum
              else
                sum - results.first
              end

    sum += results.last - results.shift
    sum %= modulo
  end

  results.last % modulo
end