# @param {Integer} amount
# @param {Integer[]} coins
# @return {Integer}
"The method name 'change' is causing some issues, so I have updated it as 'coins_change'"
def coins_change(amount, coins)
  @coins = coins
  @cache = [Hash.new(1)]
  check(amount, coins.size - 1)
end

def check(amount, coins_index)
  return 0 if amount.negative?

  if @cache[amount]
    return @cache[amount][coins_index] if @cache[amount][coins_index] 
  else
    @cache[amount] = [] 
  end

  @cache[amount][coins_index] = (0..coins_index).sum do |index|
                                  check(amount - @coins[index], index)
                                end
end