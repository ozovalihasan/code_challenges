MODULO = 10**9 + 7

# @param {Integer} length
# @return {Integer}
def count_vowel_permutation(length)
  @memo = { 'a' => {0 => 1, 1 => 1}, 'e' => {0 => 1, 1 => 1}, 'i' => {0 => 1, 1 => 1}, 'o' => {0 => 1, 1 => 1}, 'u' => {0 => 1, 1 => 1}, }
  @rules = { 'a' => %w[e], 'e' => %w[a i], 'i' => %w[a e o u], 'o' => %w[i u], 'u' => %w[a] }

  %w[a e i o u].sum do |char|
    check_char(char, length)
  end % MODULO
end

def check_char(char, length)
  return @memo[char][length] if @memo[char][length]

  length -= 1
  
  @memo[char][length + 1] = @rules[char].sum do |next_char|
    check_char(next_char, length)
  end % MODULO
end
