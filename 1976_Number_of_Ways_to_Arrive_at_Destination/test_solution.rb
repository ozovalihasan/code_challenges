require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_paths' do
    examples.each_slice(2).with_index do |(num, roads), index|
      it 'returns the number of ways you can arrive at your destination in the shortest amount of time' do
        expect(count_paths(num, roads)).to eq(results[index])
      end
    end
  end
end
