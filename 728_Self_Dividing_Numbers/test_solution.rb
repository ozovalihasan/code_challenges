require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#self_dividing_numbers' do
    examples.each_slice(2).each_with_index do |(left, right), index|
      it 'returns a list of all the self-dividing numbers in the range [left, right]' do
        expect(self_dividing_numbers(left, right)).to eq(results[index])
      end
    end
  end
end
