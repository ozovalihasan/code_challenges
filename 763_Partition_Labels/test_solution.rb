require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#partition_labels' do
    examples.each_with_index do |str, index|
      it "returns a list of integers representing the size of these parts" do
        expect(partition_labels(str)).to eq(results[index])
      end
    end
  end
end
