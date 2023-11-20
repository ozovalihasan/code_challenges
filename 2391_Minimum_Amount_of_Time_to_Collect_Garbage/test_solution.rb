require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#garbage_collection' do
    examples.each_slice(2).each_with_index do |(garbage, travel), index|
      it 'returns the minimum number of minutes needed to pick up all the garbage' do
        expect(garbage_collection(garbage, travel)).to eq(results[index])
      end
    end
  end
end
