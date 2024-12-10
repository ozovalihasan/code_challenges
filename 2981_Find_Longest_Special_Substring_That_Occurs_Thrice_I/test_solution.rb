require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_length' do
    examples.each_with_index do |str, index|
      it 'returns the length of the longest special substring of s which occurs at least thrice' do
        expect(maximum_length(str)).to eq(results[index])
      end
    end
  end
end
