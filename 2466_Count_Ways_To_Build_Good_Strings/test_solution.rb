require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_good_strings' do
    examples.each_slice(4).each_with_index do |(low, high, zero, one), index|
      it 'returns the number of different good strings that can be constructed satisfying these properties' do
        expect(count_good_strings(low, high, zero, one)).to eq(results[index])
      end
    end
  end
end
