require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#truncate_sentence' do
    examples.each_slice(2).each_with_index do |(s, k), index|
      it 'returns s after truncating it' do
        expect(truncate_sentence(s, k)).to eq(results[index])
      end
    end
  end
end
