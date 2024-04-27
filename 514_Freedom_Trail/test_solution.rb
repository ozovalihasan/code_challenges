require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_rotate_steps' do
    examples.each_slice(2).each_with_index do |(ring, key), index|
      it 'returns the minimum number of steps to spell all the characters in the keyword' do
        expect(find_rotate_steps(ring, key)).to eq(results[index])
      end
    end
  end
end
