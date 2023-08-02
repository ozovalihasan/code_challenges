require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#permute' do
    examples.each_with_index do |nums, index|
      it 'returns all the possible permutations' do
        expect(permute(nums)).to match_array(results[index])
      end
    end
  end
end
