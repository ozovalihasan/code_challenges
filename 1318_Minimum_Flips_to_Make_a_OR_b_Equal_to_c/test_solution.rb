require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_flips' do
    examples.each_slice(3).each_with_index do |(a, b, c), index|
      it "returns the minimum number of substrings in such a partition." do
        expect(min_flips(a, b, c)).to eq(results[index])
      end
    end
  end
end
