require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#replace_elements' do
    examples.each_with_index do |arr, index|
      it 'returns a array built by transforming the given array with a rule' do
        expect(replace_elements(arr)).to eq(results[index])
      end
    end
  end
end
