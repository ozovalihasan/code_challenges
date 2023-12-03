require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_time_to_visit_all_points' do
    examples.each_with_index do |points, index|
      it 'returns the minimum time in seconds to visit all the points in the order given by points' do
        expect(min_time_to_visit_all_points(points)).to eq(results[index])
      end
    end
  end
end
