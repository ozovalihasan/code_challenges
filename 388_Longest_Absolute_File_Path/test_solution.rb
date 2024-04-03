require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#length_longest_path' do
    examples.each_with_index do |input, index|
      it 'returns the length of the longest absolute path to a file in the abstracted file system' do
        expect(length_longest_path(input)).to eq(results[index])
      end
    end
  end
end
