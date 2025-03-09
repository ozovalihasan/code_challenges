require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#number_of_alternating_groups' do
    examples.each_slice(2).each_with_index do |(colors, k), index|
      it 'returns the number of alternating groups' do
        expect(number_of_alternating_groups(colors, k)).to eq(results[index])
      end
    end
  end
end
