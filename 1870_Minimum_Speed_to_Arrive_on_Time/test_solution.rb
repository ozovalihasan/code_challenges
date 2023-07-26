require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_speed_on_time' do
    examples.each_slice(2).each_with_index do |(dist, hour), index|
      it 'returns the minimum positive integer speed (in kilometers per hour)' do
        expect(min_speed_on_time(dist, hour)).to eq(results[index])
      end
    end
  end
end
