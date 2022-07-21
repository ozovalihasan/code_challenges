require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#plus_one' do
    examples.each_with_index do |digits, index|
      it 'returns an array being increased by one' do
        expect(plus_one(digits)).to eq(results[index])
      end
    end
  end
end
