require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_total_distance' do
    examples.each_slice(2).each_with_index do |(robot, factory), index|
      it 'returns the minimum total distance traveled by all the robots' do
        expect(minimum_total_distance(robot, factory)).to eq(results[index])
      end
    end
  end
end
