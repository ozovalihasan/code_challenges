require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_length' do
    examples.each_with_index do |arr, index|
      it 'returns the maximum possible length of s' do
        expect(max_length(arr)).to eq(results[index])
      end
    end
  end
end
