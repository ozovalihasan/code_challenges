require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_of_subarrays' do
    examples.each_with_index do |arr, index|
      it 'returns the number of subarrays with an odd sum' do
        expect(num_of_subarrays(arr)).to eq(results[index])
      end
    end
  end
end
