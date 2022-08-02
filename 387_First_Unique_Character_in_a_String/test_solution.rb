require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#first_uniq_char' do
    examples.each_with_index do |s, index|
      it 'returns the index of the first unique character. Else, -1' do
        expect(first_uniq_char(s)).to eq(results[index])
      end
    end
  end
end
