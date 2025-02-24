require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#most_profitable_path' do
    examples.each_slice(3).each_with_index do |(edges, bob, amount), index|
      it 'returns true if it is possible to split everyone into two groups in this way' do
        expect(most_profitable_path(edges, bob, amount)).to eq(results[index])
      end
    end
  end
end
