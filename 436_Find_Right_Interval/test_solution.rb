require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_right_interval' do
    examples.each_with_index do |intervals, index|
      it "returns an array of right interval indices for each interval i" do
        expect(find_right_interval(intervals)).to eq(results[index])
      end
    end
  end
end
