require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_array_special' do
    examples.each_with_index do |nums, index|
      it 'returns true if nums is a special array' do
        expect(is_array_special(nums)).to eq(results[index])
      end
    end
  end
end
