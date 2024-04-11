require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#remove_kdigits' do
    examples.each_slice(2).each_with_index do |(num, k), index|
      it 'returns the answers to all queries' do
        expect(remove_kdigits(num, k)).to eq(results[index])
      end
    end
  end
end
