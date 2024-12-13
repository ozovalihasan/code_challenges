require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_score' do
    examples.each_with_index do |nums, index|
      it 'returns the score you get after applying the algorithm given in the description' do
        expect(find_score(nums)).to eq(results[index])
      end
    end
  end
end
