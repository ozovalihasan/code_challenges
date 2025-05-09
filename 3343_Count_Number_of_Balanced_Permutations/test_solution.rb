require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_balanced_permutations' do
    examples.each_with_index do |num, index|
      it 'returns the number of distinct permutations of num that are balanced' do
        expect(count_balanced_permutations(num)).to eq(results[index])
      end
    end
  end
end
