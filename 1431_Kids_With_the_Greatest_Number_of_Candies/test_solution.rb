require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#kids_with_candies' do
    examples.each_slice(2).each_with_index do |(candies, extra_candies), index|
      it "returns a boolean array result of length n, where result[i] is true if, after giving the ith kid all the extraCandies, they will have the greatest number of candies among all the kids, or false otherwise" do
        expect(kids_with_candies(candies, extra_candies)).to eq(results[index])
      end
    end
  end
end
