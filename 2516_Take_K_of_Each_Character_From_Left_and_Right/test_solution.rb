require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#take_characters' do
    examples.each_slice(2).each.with_index do |(str, chr_count), index|
      it 'returns the minimum number of minutes needed for you to take at least k of each character, or return -1' do
        expect(take_characters(str, chr_count)).to eq(results[index])
      end
    end
  end
end
