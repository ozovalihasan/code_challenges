require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#lexical_order' do
    examples.each_with_index do |n, index|
      it 'returns all the numbers in the range [1, n] sorted in lexicographical order' do
        expect(lexical_order(n)).to eq(results[index])
      end
    end
  end
end
