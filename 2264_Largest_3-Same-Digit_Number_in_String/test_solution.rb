require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#largest_good_integer' do
    examples.each_with_index do |num, index|
      it 'returns the maximum good integer as a string or an empty string "" if no such integer exists' do
        expect(largest_good_integer(num)).to eq(results[index])
      end
    end
  end
end
