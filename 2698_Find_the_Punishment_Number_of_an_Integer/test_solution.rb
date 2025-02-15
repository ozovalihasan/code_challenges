require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#punishment_number' do
    examples.each_with_index do |num, index|
      it 'returns the punishment number of num' do
        expect(punishment_number(num)).to eq(results[index])
      end
    end
  end
end
