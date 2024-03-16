require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#capitalize_title' do
    examples.each_with_index do |title, index|
      it 'returns the capitalized title' do
        expect(capitalize_title(title)).to eq(results[index])
      end
    end
  end
end
