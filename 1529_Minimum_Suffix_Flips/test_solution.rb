require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_flips' do
    examples.each_with_index do |target, index|
      it 'returns the minimum number of operations needed to make s equal to target' do
        expect(min_flips(target)).to eq(results[index])
      end
    end
  end
end
