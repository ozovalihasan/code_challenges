require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#balanced_string' do
    examples.each_with_index do |str, index|
      it 'returns the minimum length of the substring that can be replaced with any other string of the same length to make s balanced' do
        expect(balanced_string(str)).to eq(results[index])
      end
    end
  end
end
