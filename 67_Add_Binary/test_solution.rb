require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#add_binary' do
    examples.each_slice(2).each_with_index do |(a, b), index|
      it 'returns the sum of binaries as a binary string' do
        expect(add_binary(a, b)).to eq(results[index])
      end
    end
  end
end
