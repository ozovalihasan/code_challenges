require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#number_of_arrays' do
    examples.each_slice(3).each.with_index do |(differences, lower, upper), index|
      it 'returns the number of possible hidden sequences there are' do
        expect(number_of_arrays(differences, lower, upper)).to eq(results[index])
      end
    end
  end
end
