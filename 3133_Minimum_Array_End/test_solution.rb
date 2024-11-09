require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_end' do
    examples.each_slice(2).each_with_index do |(n, x), index|
      it 'returns the minimum possible value of nums[n - 1]' do
        expect(min_end(n, x)).to eq(results[index])
      end
    end
  end
end
