require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_good_integers' do
    examples.each_slice(2).each_with_index do |(n, k), index|
      it 'returns the count of good integers containing n digits' do
        expect(count_good_integers(n, k)).to eq(results[index])
      end
    end
  end
end
