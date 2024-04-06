require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_remove_to_make_valid' do
    examples.each_with_index do |s, index|
      it 'returns any valid string' do
        expect(min_remove_to_make_valid(s)).to eq(results[index])
      end
    end
  end
end
