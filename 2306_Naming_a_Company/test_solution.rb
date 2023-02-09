require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#distinct_names' do
    examples.each_with_index do |ideas, index|
      it 'returns the number of distinct valid names for the company' do
        expect(distinct_names(ideas)).to eq(results[index])
      end
    end
  end
end
