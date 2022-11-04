require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_number_of_balloons' do
    examples.each_with_index do |text, index|
      it 'returns the maximum number of instances that can be formed' do
        expect(max_number_of_balloons(text)).to eq(results[index])
      end
    end
  end
end
