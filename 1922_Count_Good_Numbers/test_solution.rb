require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_good_numbers' do
    examples.each_with_index do |num, index|
      it 'returns the total number of good digit strings of length num' do
        expect(count_good_numbers(num)).to eq(results[index])
      end
    end
  end
end
