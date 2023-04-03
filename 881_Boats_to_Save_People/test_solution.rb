require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_rescue_boats' do
    examples.each_slice(2).each_with_index do |(people, limit), index|
      it 'returns the minimum number of boats to carry every given person' do
        expect(num_rescue_boats(people, limit)).to eq(results[index])
      end
    end
  end
end
