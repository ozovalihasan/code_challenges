require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#largest_altitude' do
    examples.each_with_index do |gain, index|
      it 'returns the highest altitude of a point' do
        expect(largest_altitude(gain)).to eq(results[index])
      end
    end
  end
end
