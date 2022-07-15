require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#full_justify' do
    examples.each_slice(2).each_with_index do |(words, max_width), index|
      it 'returns an array containing a formatted text' do
        expect(full_justify(words, max_width)).to eq(results[index])
      end
      
    end
  end
end
