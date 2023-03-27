require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_segments' do
    examples.each_with_index do |s, index|
      it "returns the number of segments in the string" do
        expect(count_segments(s)).to eq(results[index])
      end
    end
  end
end
