require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#remove_stars' do
    examples.each_with_index do |s, index|
      it 'returns the string after all stars have been removed' do
        expect(remove_stars(s)).to eq(results[index])
      end
    end
  end
end
