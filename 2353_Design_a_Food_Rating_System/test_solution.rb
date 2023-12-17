require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'FoodRatings' do
    examples.each_slice(2).with_index do |(actions, params), index|
      it "returns a class 'FoodRatings'" do
        food_ratings = nil
        actions.zip(params).each_with_index do |(action, param), index2|
          case action
          when 'FoodRatings'
            food_ratings = FoodRatings.new(*param)
          when 'highestRated'
            expect(food_ratings.highest_rated(*param)).to eq(results[index][index2])
          when 'changeRating'
            food_ratings.change_rating(*param)
          end
        end
      end
    end
  end
end
