require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#distance_between_bus_stops' do
    examples.each_slice(3).each_with_index do |(distance, start, destination), index|
      it 'returns the shortest distance between the given start and destination stops' do
        expect(distance_between_bus_stops(distance, start, destination)).to eq(results[index])
      end
    end
  end
end
