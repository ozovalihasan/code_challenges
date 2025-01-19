require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#trap_rain_water' do
    examples.each_with_index do |height_map, index|
      it 'returns the volume of water it can trap after raining' do
        expect(trap_rain_water(height_map)).to eq(results[index])
      end
    end
  end
end
