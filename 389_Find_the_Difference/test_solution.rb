require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_the_difference' do
    examples.each_slice(2).each_with_index do |(s, t), index|
      it 'returns the different letter between two strings' do
        expect(find_the_difference(s, t)).to eq(results[index])
      end
    end
  end
end
