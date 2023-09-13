# @param {Integer[]} ratings
# @return {Integer}
def candy(ratings)
  result = Array.new(ratings.size, 1) 
  distribute_candies(result, ratings)

  result.reverse!
  ratings.reverse!
  distribute_candies(result, ratings)

  result.sum
end

def distribute_candies(result, ratings)
  candle = 1
  previous_rating = ratings.first

  1.upto(ratings.size - 1) do |index|
    rating = ratings[index] 
    candle = 0 if rating <= previous_rating 
    candle += 1
    result[index] = candle if candle > result[index] 
    
    previous_rating = rating
  end
end