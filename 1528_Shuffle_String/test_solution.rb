require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#restore_string' do
    examples.each_slice(2).each_with_index do |(s, indices), index|
      it 'returns the shuffled string' do
        expect(restore_string(s, indices)).to eq(results[index])
      end
    end
  end
end
