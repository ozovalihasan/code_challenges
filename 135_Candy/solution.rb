# @param {Integer[]} ratings
# @return {Integer}
def candy(ratings)
  candies = Array.new(ratings.size, 1) 
  distribute_candies(candies, ratings)

  candies.reverse!
  ratings.reverse!
  distribute_candies(candies, ratings)

  candies.sum
end

def distribute_candies(candies, ratings)
  previous_candy = candies.first
  previous_rating = ratings.first

  1.upto(ratings.size - 1) do |index|
    rating = ratings[index] 
    previous_candy = 0 if rating <= ratings[index - 1]  
    previous_candy += 1
    candies[index] = previous_candy if previous_candy > candies[index] 
  end
end