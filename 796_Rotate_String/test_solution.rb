require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#rotate_string' do
    examples.each_slice(2).each_with_index do |(s, goal), index|
      it 'returns true if and only if s can become goal after some number of shifts on s' do
        expect(rotate_string(s, goal)).to eq(results[index])
      end
    end
  end
end
