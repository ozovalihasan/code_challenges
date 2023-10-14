require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#paint_walls' do
    examples.each_slice(2).each_with_index do |(cost, time), index|
      it 'returns the minimum amount of money required to paint the n walls' do
        expect(paint_walls(cost, time)).to eq(results[index])
      end
    end
  end
end
