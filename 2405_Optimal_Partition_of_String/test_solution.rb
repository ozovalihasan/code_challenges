require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#partition_string' do
    examples.each_with_index do |s, index|
      it "returns the minimum number of substrings in such a partition." do
        expect(partition_string(s)).to eq(results[index])
      end
    end
  end
end
