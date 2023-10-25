# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def kth_grammar(n, k)
  @count_change = 0
  (n - 1).times do
    @count_change += 1 if (k % 2).zero? 
    k = (k + 1) / 2
  end

  change_necessary? ? 1 : 0 
end

def change_necessary?
  @count_change.odd?
end
