require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#last_stone_weight' do
    examples.each_with_index do |stones, index|
      it 'returns the weight of the last remaining stone' do
        expect(last_stone_weight(stones)).to eq(results[index])
      end
    end
  end
end
