# Shorter and uglier version

# @param {Integer[]} scores
# @param {Integer[]} ages
# @return {Integer}
def best_team_score(scores, ages)
  @players = scores.zip(ages).sort_by(&:itself)
  
  @result = {}
  @players.each_with_index do |(score, age), index|
    younger_or_equal_age_max = @result.select { |age_previous, _| age_previous <= age }.values.max || 0
    @result[age] = younger_or_equal_age_max + score
  end

  @result.values.max
end

##############
## 2. Solution
##############
# # @param {Integer[]} scores
# # @param {Integer[]} ages
# # @return {Integer}
# def best_team_score(scores, ages)
#   @players = scores.zip(ages).map do |(score, age)|
#     Player.new(score, age)
#   end

#   @players.sort_by! {|player| [ player.score, player.age ]}

#   @result = {}
#   @players.each_with_index do |player, index|
#     younger_or_equal_age_max = @result.select {|age, _| age <= player.age}.values.max || 0
#     @result[player.age] = younger_or_equal_age_max + player.score
#   end

#   @result.values.max
# end

# class Player
#   attr_reader :score, :age
  
#   def initialize(score, age)
#     @score = score
#     @age = age
#   end
# end