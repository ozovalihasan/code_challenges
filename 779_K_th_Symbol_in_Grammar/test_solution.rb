require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#kth_grammar' do
    examples.each_slice(2).each_with_index do |(n, k), index|
      it 'returns the kth (1-indexed) symbol in the nth row of a table of n rows' do
        expect(kth_grammar(n, k)).to eq(results[index])
      end
    end
  end
end
