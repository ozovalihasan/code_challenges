require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_complement' do
    examples.each_with_index do |num, index|
      it 'return complement of a given integer' do
        expect(find_complement(num)).to eq(results[index])
      end
    end
  end
end
