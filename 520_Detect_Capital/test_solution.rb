require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#detect_capital_use' do
    examples.each_with_index do |word, index|
      it 'returns true if the usage of capitals is as expected' do
        expect(detect_capital_use(word)).to eq(results[index])
      end
    end
  end
end
