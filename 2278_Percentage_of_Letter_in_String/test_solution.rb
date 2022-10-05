require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#percentage_letter' do
    examples.each_slice(2).each_with_index do |(s, letter), index|
      it 'returns the percentage of characters in s that equal letter rounded down to the nearest whole percent' do
        expect(percentage_letter(s, letter)).to eq(results[index])
      end
    end
  end
end
