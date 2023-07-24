require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#my_pow' do
    examples.each_slice(2).each_with_index do |(x, n), index|
      it 'returns the implementation of pow(x, n)' do
        expect(my_pow(x, n).round(5)).to eq(results[index])
      end
    end
  end
end
