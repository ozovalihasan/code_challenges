require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#construct_distanced_sequence' do
    examples.each_with_index do |num, index|
      it 'returns the lexicographically largest sequence' do
        expect(construct_distanced_sequence(num)).to eq(results[index])
      end
    end
  end
end
