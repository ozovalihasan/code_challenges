require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#single_non_duplicate' do
    examples.each_with_index do |nums, index|
      it 'returns the single element that appears only once' do
        expect(single_non_duplicate(nums)).to eq(results[index])
      end
    end
  end
end
