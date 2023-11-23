require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_arithmetic_subarrays' do
    examples.each_slice(3).each_with_index do |(nums, l, r), index|
      it 'returns a list of boolean elements answer' do
        expect(check_arithmetic_subarrays(nums, l, r)).to eq(results[index])
      end
    end
  end
end
