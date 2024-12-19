require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_chunks_to_sorted' do
    examples.each_with_index do |arr, index|
      it 'returns the largest number of chunks we can make to sort the array' do
        expect(max_chunks_to_sorted(arr)).to eq(results[index])
      end
    end
  end
end
