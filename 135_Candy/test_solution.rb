require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#candy' do
    examples.each_with_index do |ratings, index|
      it 'returns the minimum number of candies you need to have to distribute the candies to the children' do
        expect(candy(ratings)).to eq(results[index])
      end
    end
  end
end
