require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimize_max' do
    examples.each_slice(2).each_with_index do |(nums, pair_length), index|
      it 'returns the minimum maximum difference among all p pairs' do
        expect(minimize_max(nums, pair_length)).to eq(results[index])
      end
    end
  end
end
