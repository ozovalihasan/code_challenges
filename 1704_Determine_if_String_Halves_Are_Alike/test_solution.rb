require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#halves_are_alike' do
    examples.each_with_index do |s, index|
      it 'returns if a and b are alike' do
        expect(halves_are_alike(s)).to eq(results[index])
      end
    end
  end
end
