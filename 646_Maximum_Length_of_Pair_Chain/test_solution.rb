require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_longest_chain' do
    examples.each_with_index do |pairs, index|
      it 'returns the length longest chain which can be formed' do
        expect(find_longest_chain(pairs)).to eq(results[index])
      end
    end
  end
end
