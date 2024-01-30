require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_min_difference' do
    examples.each_with_index do |time_points, index|
      it 'returns the minimum minutes difference between any two time-points in the list' do
        expect(find_min_difference(time_points)).to eq(results[index])
      end
    end
  end
end
