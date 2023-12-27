require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_cost' do
    examples.each_slice(2).each_with_index do |(colors, needed_time), index|
      it 'returns the minimum time Bob needs to make the rope colorful' do
        expect(min_cost(colors, needed_time)).to eq(results[index])
      end
    end
  end
end
