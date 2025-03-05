require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_powers_of_three' do
    examples.each_with_index do |num, index|
      it 'returns true if it is possible to represent n as the sum of distinct powers of three' do
        expect(check_powers_of_three(num)).to eq(results[index])
      end
    end
  end
end
