require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#convert' do
    examples.each_slice(2).each_with_index do |(s, num_rows), index|
      it 'returns the converted string' do
        expect(convert(s, num_rows)).to eq(results[index])
      end
    end
  end
end
