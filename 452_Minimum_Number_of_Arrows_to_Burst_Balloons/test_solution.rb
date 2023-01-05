require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_min_arrow_shots' do
    examples.each_with_index do |points, index|
      it 'returns the minimum number of arrows that must be shot to burst all balloons' do
        expect(find_min_arrow_shots(points)).to eq(results[index])
      end
    end
  end
end
