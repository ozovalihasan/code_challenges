require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_operations' do
    examples.each_slice(2).each_with_index do |(nums, queries), index|
      it 'returns an array answer of size m where answer[i] is the minimum number of operations to make all elements of nums equal to queries[i]' do
        expect(min_operations(nums, queries)).to eq(results[index])
      end
    end
  end
end
