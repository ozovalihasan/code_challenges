require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_operations' do
    examples.each_with_index do |str, index|
      it "returns the minimum number of operations needed to make s alternating" do
        expect(min_operations(str)).to eq(results[index])
      end
    end
  end
end
