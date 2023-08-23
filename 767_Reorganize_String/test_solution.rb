require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#reorganize_string' do
    examples.each_with_index do |s, index|
      it 'returns any possible rearrangement of s or return "" if not possible' do
        expect(reorganize_string(s)).to eq(results[index])
      end
    end
  end
end
