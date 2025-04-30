require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_numbers' do
    examples.each_with_index do |nums, index|
      it 'returns how many of them contain an even number of digits' do
        expect(find_numbers(nums)).to eq(results[index])
      end
    end
  end
end
