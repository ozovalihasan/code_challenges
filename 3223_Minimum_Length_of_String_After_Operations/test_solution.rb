require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_length(' do
    examples.each_with_index do |str, index|
      it 'returns the minimum length of the final string s that you can achieve' do
        expect(minimum_length(str)).to eq(results[index])
      end
    end
  end
end
