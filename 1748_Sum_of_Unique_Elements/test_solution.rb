require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#sum_of_unique' do
    examples.each_with_index do |nums, index|
      it 'returns the sum of all the unique elements of nums' do
        expect(sum_of_unique(nums)).to eq(results[index])
      end
    end
  end
end
