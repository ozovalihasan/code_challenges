require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_arith_seq_length' do
    examples.each_with_index do |nums, index|
      it 'returns the maximum profit you can achieve' do
        expect(longest_arith_seq_length(nums)).to eq(results[index])
      end
    end
  end
end
