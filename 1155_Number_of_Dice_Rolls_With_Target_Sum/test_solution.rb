require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_common_subsequence' do
    examples.each_slice(3).each_with_index do |(n, k, target), index|
      it 'returns the number of possible ways (out of the kn total ways) to roll the dice' do
        expect(num_rolls_to_target(n, k, target)).to eq(results[index])
      end
    end
  end
end
