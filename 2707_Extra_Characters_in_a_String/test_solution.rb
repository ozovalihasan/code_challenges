require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_extra_char' do
    examples.each_slice(2).each_with_index do |(s, dictionary), index|
      it 'returns the minimum number of extra characters left over if you break up s optimally' do
        expect(min_extra_char(s, dictionary)).to eq(results[index])
      end
    end
  end
end
