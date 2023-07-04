require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#single_number' do
    examples.each_with_index do |nums, index|
      it 'returns the single element' do
        expect(single_number(nums)).to eq(results[index])
      end
    end
  end
end
