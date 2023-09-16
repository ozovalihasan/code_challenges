require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_effort_path' do
    examples.each_with_index do |heights, index|
      it 'returns the minimum effort required to travel from the top-left cell to the bottom-right cell' do
        expect(minimum_effort_path(heights)).to eq(results[index])
      end
    end
  end
end
