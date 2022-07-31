require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#word_subsets' do
    examples.each_with_index do |n, index|
      it 'return the number of complete rows built by using n coins' do
        expect(arrange_coins(n)).to eq(results[index])
      end
    end
  end
end
