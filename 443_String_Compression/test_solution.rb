require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#compress' do
    examples.each_with_index do |chars, index|
      it 'returns the new length of the array after the input array is modified ' do
        expect(compress(chars)).to eq(results[index])
      end
    end
  end
end
