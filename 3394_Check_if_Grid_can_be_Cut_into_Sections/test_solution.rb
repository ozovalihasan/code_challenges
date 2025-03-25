require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_valid_cuts' do
    examples.each_slice(2).each_with_index do |(num, rectangles), index|
      it 'returns true if such cuts can be made; otherwise, return false' do
        expect(check_valid_cuts(num, rectangles)).to eq(results[index])
      end
    end
  end
end
