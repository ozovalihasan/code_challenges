require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_rabbits' do
    examples.each_with_index do |answers, index|
      it 'returns the minimum number of rabbits that could be in the forest' do
        expect(num_rabbits(answers)).to eq(results[index])
      end
    end
  end
end
