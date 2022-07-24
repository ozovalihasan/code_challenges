require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#generate' do
    examples.each_with_index do |num_rows, index|
      it 'returns the first numRows of Pascal"s triangle' do
        expect(generate(num_rows)).to eq(results[index])
      end
    end
  end
end
