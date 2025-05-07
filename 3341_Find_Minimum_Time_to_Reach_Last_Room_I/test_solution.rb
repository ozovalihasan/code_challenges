require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_time_to_reach(' do
    examples.each_with_index do |move_time, index|
      it 'returns the minimum time to reach the room (n - 1, m - 1)' do
        expect(min_time_to_reach(move_time)).to eq(results[index])
      end
    end
  end
end
