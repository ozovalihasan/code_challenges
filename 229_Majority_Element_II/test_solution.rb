require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#majority_element' do
    examples.each_with_index do |nums, index|
      it 'returns all elements that appear more than ⌊ n/3 ⌋ times' do
        expect(majority_element(nums)).to eq(results[index])
      end
    end
  end
end
